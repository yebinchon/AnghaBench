
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object_load_attr {struct bpf_object* obj; } ;
struct bpf_object {int dummy; } ;


 int bpf_object__load_xattr (struct bpf_object_load_attr*) ;

int bpf_object__load(struct bpf_object *obj)
{
 struct bpf_object_load_attr attr = {
  .obj = obj,
 };

 return bpf_object__load_xattr(&attr);
}
