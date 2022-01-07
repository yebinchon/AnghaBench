
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object_open_attr {int prog_type; int file; } ;
struct bpf_object {int dummy; } ;


 struct bpf_object* __bpf_object__open (int ,int *,int ,int ,int) ;
 int bpf_prog_type__needs_kver (int ) ;
 int pr_debug (char*,int ) ;

struct bpf_object *__bpf_object__open_xattr(struct bpf_object_open_attr *attr,
         int flags)
{

 if (!attr->file)
  return ((void*)0);

 pr_debug("loading %s\n", attr->file);

 return __bpf_object__open(attr->file, ((void*)0), 0,
      bpf_prog_type__needs_kver(attr->prog_type),
      flags);
}
