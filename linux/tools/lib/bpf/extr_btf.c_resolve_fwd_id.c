
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct btf_dedup {size_t* map; TYPE_1__* btf; } ;
typedef size_t __u32 ;
struct TYPE_2__ {int * types; } ;


 int btf_is_fwd (int ) ;
 scalar_t__ is_type_mapped (struct btf_dedup*,size_t) ;

__attribute__((used)) static uint32_t resolve_fwd_id(struct btf_dedup *d, uint32_t type_id)
{
 __u32 orig_type_id = type_id;

 if (!btf_is_fwd(d->btf->types[type_id]))
  return type_id;

 while (is_type_mapped(d, type_id) && d->map[type_id] != type_id)
  type_id = d->map[type_id];

 if (!btf_is_fwd(d->btf->types[type_id]))
  return type_id;

 return orig_type_id;
}
