
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object_open_attr {char const* file; int prog_type; } ;
struct bpf_object {int dummy; } ;


 int BPF_PROG_TYPE_UNSPEC ;
 struct bpf_object* bpf_object__open_xattr (struct bpf_object_open_attr*) ;

struct bpf_object *bpf_object__open(const char *path)
{
 struct bpf_object_open_attr attr = {
  .file = path,
  .prog_type = BPF_PROG_TYPE_UNSPEC,
 };

 return bpf_object__open_xattr(&attr);
}
