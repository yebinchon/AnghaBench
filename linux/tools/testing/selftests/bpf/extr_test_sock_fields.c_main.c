
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int dummy; } ;
struct bpf_prog_load_attr {char* file; int prog_flags; int prog_type; } ;
struct bpf_object {int dummy; } ;
struct bpf_map {int dummy; } ;


 int BPF_CGROUP_INET_EGRESS ;
 int BPF_CGROUP_INET_INGRESS ;
 int BPF_F_TEST_RND_HI32 ;
 int BPF_PROG_TYPE_CGROUP_SKB ;
 int CHECK (int,char*,char*,...) ;
 int TEST_CGROUP ;
 void* addr_map_fd ;
 int atexit (int (*) ()) ;
 void* bpf_map__fd (struct bpf_map*) ;
 int bpf_object__close (struct bpf_object*) ;
 struct bpf_map* bpf_object__find_map_by_name (struct bpf_object*,char*) ;
 struct bpf_program* bpf_object__find_program_by_title (struct bpf_object*,char*) ;
 int bpf_prog_attach (int,int,int ,int ) ;
 int bpf_prog_load_xattr (struct bpf_prog_load_attr*,struct bpf_object**,int*) ;
 int bpf_program__fd (struct bpf_program*) ;
 int cleanup_cgroup_environment () ;
 int close (int) ;
 int create_and_get_cgroup (int ) ;
 int errno ;
 int join_cgroup (int ) ;
 void* linum_map_fd ;
 int printf (char*) ;
 int setup_cgroup_environment () ;
 void* sk_map_fd ;
 void* sk_pkt_out_cnt10_fd ;
 void* sk_pkt_out_cnt_fd ;
 int test () ;
 void* tp_map_fd ;

int main(int argc, char **argv)
{
 struct bpf_prog_load_attr attr = {
  .file = "test_sock_fields_kern.o",
  .prog_type = BPF_PROG_TYPE_CGROUP_SKB,
  .prog_flags = BPF_F_TEST_RND_HI32,
 };
 int cgroup_fd, egress_fd, ingress_fd, err;
 struct bpf_program *ingress_prog;
 struct bpf_object *obj;
 struct bpf_map *map;

 err = setup_cgroup_environment();
 CHECK(err, "setup_cgroup_environment()", "err:%d errno:%d",
       err, errno);

 atexit(cleanup_cgroup_environment);


 cgroup_fd = create_and_get_cgroup(TEST_CGROUP);
 CHECK(cgroup_fd == -1, "create_and_get_cgroup()",
       "cgroup_fd:%d errno:%d", cgroup_fd, errno);

 err = join_cgroup(TEST_CGROUP);
 CHECK(err, "join_cgroup", "err:%d errno:%d", err, errno);

 err = bpf_prog_load_xattr(&attr, &obj, &egress_fd);
 CHECK(err, "bpf_prog_load_xattr()", "err:%d", err);

 ingress_prog = bpf_object__find_program_by_title(obj,
        "cgroup_skb/ingress");
 CHECK(!ingress_prog,
       "bpf_object__find_program_by_title(cgroup_skb/ingress)",
       "not found");
 ingress_fd = bpf_program__fd(ingress_prog);

 err = bpf_prog_attach(egress_fd, cgroup_fd, BPF_CGROUP_INET_EGRESS, 0);
 CHECK(err == -1, "bpf_prog_attach(CPF_CGROUP_INET_EGRESS)",
       "err:%d errno%d", err, errno);

 err = bpf_prog_attach(ingress_fd, cgroup_fd,
         BPF_CGROUP_INET_INGRESS, 0);
 CHECK(err == -1, "bpf_prog_attach(CPF_CGROUP_INET_INGRESS)",
       "err:%d errno%d", err, errno);
 close(cgroup_fd);

 map = bpf_object__find_map_by_name(obj, "addr_map");
 CHECK(!map, "cannot find addr_map", "(null)");
 addr_map_fd = bpf_map__fd(map);

 map = bpf_object__find_map_by_name(obj, "sock_result_map");
 CHECK(!map, "cannot find sock_result_map", "(null)");
 sk_map_fd = bpf_map__fd(map);

 map = bpf_object__find_map_by_name(obj, "tcp_sock_result_map");
 CHECK(!map, "cannot find tcp_sock_result_map", "(null)");
 tp_map_fd = bpf_map__fd(map);

 map = bpf_object__find_map_by_name(obj, "linum_map");
 CHECK(!map, "cannot find linum_map", "(null)");
 linum_map_fd = bpf_map__fd(map);

 map = bpf_object__find_map_by_name(obj, "sk_pkt_out_cnt");
 CHECK(!map, "cannot find sk_pkt_out_cnt", "(null)");
 sk_pkt_out_cnt_fd = bpf_map__fd(map);

 map = bpf_object__find_map_by_name(obj, "sk_pkt_out_cnt10");
 CHECK(!map, "cannot find sk_pkt_out_cnt10", "(null)");
 sk_pkt_out_cnt10_fd = bpf_map__fd(map);

 test();

 bpf_object__close(obj);
 cleanup_cgroup_environment();

 printf("PASS\n");

 return 0;
}
