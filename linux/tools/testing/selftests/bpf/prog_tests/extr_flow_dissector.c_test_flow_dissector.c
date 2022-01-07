
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bpf_prog_test_run_attr {int prog_fd; int data_size_in; int ctx_size_in; int data_size_out; int retval; int duration; struct bpf_flow_keys* ctx_in; struct bpf_flow_keys* data_out; int * data_in; } ;
struct bpf_object {int dummy; } ;
struct bpf_flow_keys {int flags; } ;
typedef int flow_keys ;
typedef int ctx ;
typedef int __u32 ;
struct TYPE_5__ {int dport; scalar_t__ sport; } ;
struct TYPE_4__ {int flags; int name; TYPE_2__ keys; int pkt; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BPF_FLOW_DISSECTOR ;
 int BPF_FLOW_DISSECTOR_F_PARSE_1ST_FRAG ;
 int CHECK (int,char*,char*,int,int ) ;
 int CHECK_ATTR (int,int ,char*,int,...) ;
 scalar_t__ CHECK_FAIL (int) ;
 int CHECK_FLOW_KEYS (int ,struct bpf_flow_keys,TYPE_2__) ;
 int bpf_flow_load (struct bpf_object**,char*,char*,char*,char*,int*,int*) ;
 int bpf_map_delete_elem (int,int*) ;
 int bpf_map_lookup_elem (int,int*,struct bpf_flow_keys*) ;
 int bpf_object__close (struct bpf_object*) ;
 int bpf_prog_attach (int,int ,int ,int ) ;
 int bpf_prog_detach (int,int ) ;
 int bpf_prog_test_run_xattr (struct bpf_prog_test_run_attr*) ;
 int create_tap (char*) ;
 int errno ;
 int ifup (char*) ;
 TYPE_1__* tests ;
 int tx_tap (int,int *,int) ;

void test_flow_dissector(void)
{
 int i, err, prog_fd, keys_fd = -1, tap_fd;
 struct bpf_object *obj;
 __u32 duration = 0;

 err = bpf_flow_load(&obj, "./bpf_flow.o", "flow_dissector",
       "jmp_table", "last_dissection", &prog_fd, &keys_fd);
 if (CHECK_FAIL(err))
  return;

 for (i = 0; i < ARRAY_SIZE(tests); i++) {
  struct bpf_flow_keys flow_keys;
  struct bpf_prog_test_run_attr tattr = {
   .prog_fd = prog_fd,
   .data_in = &tests[i].pkt,
   .data_size_in = sizeof(tests[i].pkt),
   .data_out = &flow_keys,
  };
  static struct bpf_flow_keys ctx = {};

  if (tests[i].flags) {
   tattr.ctx_in = &ctx;
   tattr.ctx_size_in = sizeof(ctx);
   ctx.flags = tests[i].flags;
  }

  err = bpf_prog_test_run_xattr(&tattr);
  CHECK_ATTR(tattr.data_size_out != sizeof(flow_keys) ||
      err || tattr.retval != 1,
      tests[i].name,
      "err %d errno %d retval %d duration %d size %u/%lu\n",
      err, errno, tattr.retval, tattr.duration,
      tattr.data_size_out, sizeof(flow_keys));
  CHECK_FLOW_KEYS(tests[i].name, flow_keys, tests[i].keys);
 }







 err = bpf_prog_attach(prog_fd, 0, BPF_FLOW_DISSECTOR, 0);
 CHECK(err, "bpf_prog_attach", "err %d errno %d\n", err, errno);

 tap_fd = create_tap("tap0");
 CHECK(tap_fd < 0, "create_tap", "tap_fd %d errno %d\n", tap_fd, errno);
 err = ifup("tap0");
 CHECK(err, "ifup", "err %d errno %d\n", err, errno);

 for (i = 0; i < ARRAY_SIZE(tests); i++) {

  __u32 eth_get_headlen_flags =
   BPF_FLOW_DISSECTOR_F_PARSE_1ST_FRAG;
  struct bpf_prog_test_run_attr tattr = {};
  struct bpf_flow_keys flow_keys = {};
  __u32 key = (__u32)(tests[i].keys.sport) << 16 |
       tests[i].keys.dport;





  if (tests[i].flags != eth_get_headlen_flags)
   continue;

  err = tx_tap(tap_fd, &tests[i].pkt, sizeof(tests[i].pkt));
  CHECK(err < 0, "tx_tap", "err %d errno %d\n", err, errno);

  err = bpf_map_lookup_elem(keys_fd, &key, &flow_keys);
  CHECK_ATTR(err, tests[i].name, "bpf_map_lookup_elem %d\n", err);

  CHECK_ATTR(err, tests[i].name, "skb-less err %d\n", err);
  CHECK_FLOW_KEYS(tests[i].name, flow_keys, tests[i].keys);

  err = bpf_map_delete_elem(keys_fd, &key);
  CHECK_ATTR(err, tests[i].name, "bpf_map_delete_elem %d\n", err);
 }

 bpf_prog_detach(prog_fd, BPF_FLOW_DISSECTOR);
 bpf_object__close(obj);
}
