
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_type {int size; } ;
struct btf {int dummy; } ;
typedef int __u32 ;
struct TYPE_2__ {int type; } ;







 int EINVAL ;
 TYPE_1__* btf_array (struct btf_type const*) ;
 int btf_int_bits (struct btf_type const*) ;
 int btf_int_offset (struct btf_type const*) ;
 scalar_t__ btf_is_composite (struct btf_type const*) ;
 int btf_kind (struct btf_type const*) ;
 int pr_warning (char*,int,int ,int ) ;
 struct btf_type* skip_mods_and_typedefs (struct btf const*,int ,int *) ;

__attribute__((used)) static int bpf_core_fields_are_compat(const struct btf *local_btf,
          __u32 local_id,
          const struct btf *targ_btf,
          __u32 targ_id)
{
 const struct btf_type *local_type, *targ_type;

recur:
 local_type = skip_mods_and_typedefs(local_btf, local_id, &local_id);
 targ_type = skip_mods_and_typedefs(targ_btf, targ_id, &targ_id);
 if (!local_type || !targ_type)
  return -EINVAL;

 if (btf_is_composite(local_type) && btf_is_composite(targ_type))
  return 1;
 if (btf_kind(local_type) != btf_kind(targ_type))
  return 0;

 switch (btf_kind(local_type)) {
 case 130:
 case 128:
  return 1;
 case 131:
  return local_type->size == targ_type->size;
 case 129:
  return btf_int_offset(local_type) == 0 &&
         btf_int_offset(targ_type) == 0 &&
         local_type->size == targ_type->size &&
         btf_int_bits(local_type) == btf_int_bits(targ_type);
 case 132:
  local_id = btf_array(local_type)->type;
  targ_id = btf_array(targ_type)->type;
  goto recur;
 default:
  pr_warning("unexpected kind %d relocated, local [%d], target [%d]\n",
      btf_kind(local_type), local_id, targ_id);
  return 0;
 }
}
