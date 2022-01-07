
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
struct btf {size_t nr_types; struct btf_type const** types; } ;
typedef size_t __u32 ;



const struct btf_type *btf__type_by_id(const struct btf *btf, __u32 type_id)
{
 if (type_id > btf->nr_types)
  return ((void*)0);

 return btf->types[type_id];
}
