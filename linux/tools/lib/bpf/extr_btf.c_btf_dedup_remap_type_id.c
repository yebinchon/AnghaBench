
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_dedup {size_t* hypot_map; } ;
typedef size_t __u32 ;


 size_t BTF_MAX_NR_TYPES ;
 int EINVAL ;
 size_t resolve_type_id (struct btf_dedup*,size_t) ;

__attribute__((used)) static int btf_dedup_remap_type_id(struct btf_dedup *d, __u32 type_id)
{
 __u32 resolved_type_id, new_type_id;

 resolved_type_id = resolve_type_id(d, type_id);
 new_type_id = d->hypot_map[resolved_type_id];
 if (new_type_id > BTF_MAX_NR_TYPES)
  return -EINVAL;
 return new_type_id;
}
