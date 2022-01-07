
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int type; } ;
struct btf {int dummy; } ;
typedef int __u32 ;


 struct btf_type* btf__type_by_id (struct btf const*,int ) ;
 scalar_t__ btf_is_mod (struct btf_type const*) ;
 scalar_t__ btf_is_typedef (struct btf_type const*) ;

__attribute__((used)) static const struct btf_type *
skip_mods_and_typedefs(const struct btf *btf, __u32 id, __u32 *res_id)
{
 const struct btf_type *t = btf__type_by_id(btf, id);

 if (res_id)
  *res_id = id;

 while (btf_is_mod(t) || btf_is_typedef(t)) {
  if (res_id)
   *res_id = t->type;
  t = btf__type_by_id(btf, t->type);
 }

 return t;
}
