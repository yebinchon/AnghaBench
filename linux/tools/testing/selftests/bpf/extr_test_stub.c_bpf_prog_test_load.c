
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog_load_attr {char const* file; int prog_type; int prog_flags; scalar_t__ expected_attach_type; } ;
struct bpf_object {int dummy; } ;
typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;


 int BPF_F_TEST_RND_HI32 ;
 int bpf_prog_load_xattr (struct bpf_prog_load_attr*,struct bpf_object**,int*) ;
 int memset (struct bpf_prog_load_attr*,int ,int) ;

int bpf_prog_test_load(const char *file, enum bpf_prog_type type,
         struct bpf_object **pobj, int *prog_fd)
{
 struct bpf_prog_load_attr attr;

 memset(&attr, 0, sizeof(struct bpf_prog_load_attr));
 attr.file = file;
 attr.prog_type = type;
 attr.expected_attach_type = 0;
 attr.prog_flags = BPF_F_TEST_RND_HI32;

 return bpf_prog_load_xattr(&attr, pobj, prog_fd);
}
