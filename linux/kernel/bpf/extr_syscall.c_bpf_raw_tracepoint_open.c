
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prog_fd; int name; } ;
union bpf_attr {TYPE_1__ raw_tracepoint; } ;
typedef int tp_name ;
struct bpf_raw_tracepoint {struct bpf_raw_event_map* btp; struct bpf_prog* prog; } ;
struct bpf_raw_event_map {int dummy; } ;
struct bpf_prog {scalar_t__ type; } ;


 scalar_t__ BPF_PROG_TYPE_RAW_TRACEPOINT ;
 scalar_t__ BPF_PROG_TYPE_RAW_TRACEPOINT_WRITABLE ;
 int EFAULT ;
 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_USER ;
 scalar_t__ IS_ERR (struct bpf_prog*) ;
 int O_CLOEXEC ;
 int PTR_ERR (struct bpf_prog*) ;
 int anon_inode_getfd (char*,int *,struct bpf_raw_tracepoint*,int ) ;
 struct bpf_raw_event_map* bpf_get_raw_tracepoint (char*) ;
 int bpf_probe_register (struct bpf_raw_event_map*,struct bpf_prog*) ;
 int bpf_probe_unregister (struct bpf_raw_event_map*,struct bpf_prog*) ;
 struct bpf_prog* bpf_prog_get (int ) ;
 int bpf_prog_put (struct bpf_prog*) ;
 int bpf_put_raw_tracepoint (struct bpf_raw_event_map*) ;
 int bpf_raw_tp_fops ;
 int kfree (struct bpf_raw_tracepoint*) ;
 struct bpf_raw_tracepoint* kzalloc (int,int ) ;
 scalar_t__ strncpy_from_user (char*,int ,int) ;
 int u64_to_user_ptr (int ) ;

__attribute__((used)) static int bpf_raw_tracepoint_open(const union bpf_attr *attr)
{
 struct bpf_raw_tracepoint *raw_tp;
 struct bpf_raw_event_map *btp;
 struct bpf_prog *prog;
 char tp_name[128];
 int tp_fd, err;

 if (strncpy_from_user(tp_name, u64_to_user_ptr(attr->raw_tracepoint.name),
         sizeof(tp_name) - 1) < 0)
  return -EFAULT;
 tp_name[sizeof(tp_name) - 1] = 0;

 btp = bpf_get_raw_tracepoint(tp_name);
 if (!btp)
  return -ENOENT;

 raw_tp = kzalloc(sizeof(*raw_tp), GFP_USER);
 if (!raw_tp) {
  err = -ENOMEM;
  goto out_put_btp;
 }
 raw_tp->btp = btp;

 prog = bpf_prog_get(attr->raw_tracepoint.prog_fd);
 if (IS_ERR(prog)) {
  err = PTR_ERR(prog);
  goto out_free_tp;
 }
 if (prog->type != BPF_PROG_TYPE_RAW_TRACEPOINT &&
     prog->type != BPF_PROG_TYPE_RAW_TRACEPOINT_WRITABLE) {
  err = -EINVAL;
  goto out_put_prog;
 }

 err = bpf_probe_register(raw_tp->btp, prog);
 if (err)
  goto out_put_prog;

 raw_tp->prog = prog;
 tp_fd = anon_inode_getfd("bpf-raw-tracepoint", &bpf_raw_tp_fops, raw_tp,
     O_CLOEXEC);
 if (tp_fd < 0) {
  bpf_probe_unregister(raw_tp->btp, prog);
  err = tp_fd;
  goto out_put_prog;
 }
 return tp_fd;

out_put_prog:
 bpf_prog_put(prog);
out_free_tp:
 kfree(raw_tp);
out_put_btp:
 bpf_put_raw_tracepoint(btp);
 return err;
}
