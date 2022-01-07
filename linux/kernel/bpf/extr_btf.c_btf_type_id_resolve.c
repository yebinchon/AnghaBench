
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct btf_type {int dummy; } ;
struct btf {size_t* resolved_ids; } ;


 struct btf_type const* btf_type_by_id (struct btf const*,size_t) ;

__attribute__((used)) static const struct btf_type *btf_type_id_resolve(const struct btf *btf,
        u32 *type_id)
{
 *type_id = btf->resolved_ids[*type_id];
 return btf_type_by_id(btf, *type_id);
}
