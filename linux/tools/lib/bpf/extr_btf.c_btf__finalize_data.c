
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
struct btf {size_t nr_types; struct btf_type** types; } ;
struct bpf_object {int dummy; } ;
typedef size_t __u32 ;


 int btf_fixup_datasec (struct bpf_object*,struct btf*,struct btf_type*) ;
 scalar_t__ btf_is_datasec (struct btf_type*) ;

int btf__finalize_data(struct bpf_object *obj, struct btf *btf)
{
 int err = 0;
 __u32 i;

 for (i = 1; i <= btf->nr_types; i++) {
  struct btf_type *t = btf->types[i];






  if (btf_is_datasec(t)) {
   err = btf_fixup_datasec(obj, btf, t);
   if (err)
    break;
  }
 }

 return err;
}
