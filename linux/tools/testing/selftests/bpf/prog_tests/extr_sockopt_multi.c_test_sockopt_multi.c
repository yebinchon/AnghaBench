
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog_load_attr {char* file; } ;
struct bpf_object {int dummy; } ;


 int AF_INET ;
 scalar_t__ CHECK_FAIL (int) ;
 int SOCK_STREAM ;
 int bpf_object__close (struct bpf_object*) ;
 int bpf_prog_load_xattr (struct bpf_prog_load_attr*,struct bpf_object**,int*) ;
 int close (int) ;
 int run_getsockopt_test (struct bpf_object*,int,int,int) ;
 int run_setsockopt_test (struct bpf_object*,int,int,int) ;
 int socket (int ,int ,int ) ;
 int test__join_cgroup (char*) ;

void test_sockopt_multi(void)
{
 struct bpf_prog_load_attr attr = {
  .file = "./sockopt_multi.o",
 };
 int cg_parent = -1, cg_child = -1;
 struct bpf_object *obj = ((void*)0);
 int sock_fd = -1;
 int err = -1;
 int ignored;

 cg_parent = test__join_cgroup("/parent");
 if (CHECK_FAIL(cg_parent < 0))
  goto out;

 cg_child = test__join_cgroup("/parent/child");
 if (CHECK_FAIL(cg_child < 0))
  goto out;

 err = bpf_prog_load_xattr(&attr, &obj, &ignored);
 if (CHECK_FAIL(err))
  goto out;

 sock_fd = socket(AF_INET, SOCK_STREAM, 0);
 if (CHECK_FAIL(sock_fd < 0))
  goto out;

 CHECK_FAIL(run_getsockopt_test(obj, cg_parent, cg_child, sock_fd));
 CHECK_FAIL(run_setsockopt_test(obj, cg_parent, cg_child, sock_fd));

out:
 close(sock_fd);
 bpf_object__close(obj);
 close(cg_child);
 close(cg_parent);
}
