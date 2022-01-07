
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_addr_test {scalar_t__ expected_result; int expected_attach_type; } ;
struct bpf_prog_load_attr {char const* file; int prog_flags; int expected_attach_type; int prog_type; } ;
struct bpf_object {int dummy; } ;


 int BPF_F_TEST_RND_HI32 ;
 int BPF_PROG_TYPE_CGROUP_SOCK_ADDR ;
 scalar_t__ LOAD_REJECT ;
 scalar_t__ bpf_prog_load_xattr (struct bpf_prog_load_attr*,struct bpf_object**,int*) ;
 int log_err (char*,char const*) ;
 int memset (struct bpf_prog_load_attr*,int ,int) ;

__attribute__((used)) static int load_path(const struct sock_addr_test *test, const char *path)
{
 struct bpf_prog_load_attr attr;
 struct bpf_object *obj;
 int prog_fd;

 memset(&attr, 0, sizeof(struct bpf_prog_load_attr));
 attr.file = path;
 attr.prog_type = BPF_PROG_TYPE_CGROUP_SOCK_ADDR;
 attr.expected_attach_type = test->expected_attach_type;
 attr.prog_flags = BPF_F_TEST_RND_HI32;

 if (bpf_prog_load_xattr(&attr, &obj, &prog_fd)) {
  if (test->expected_result != LOAD_REJECT)
   log_err(">>> Loading program (%s) error.\n", path);
  return -1;
 }

 return prog_fd;
}
