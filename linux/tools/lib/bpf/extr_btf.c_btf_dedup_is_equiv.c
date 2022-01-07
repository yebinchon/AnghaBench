
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct btf_type {scalar_t__ name_off; size_t type; int info; } ;
struct btf_param {size_t type; } ;
struct btf_member {size_t type; } ;
struct TYPE_4__ {scalar_t__ dont_resolve_fwds; } ;
struct btf_dedup {size_t* hypot_map; TYPE_2__ opts; TYPE_1__* btf; } ;
struct btf_array {size_t index_type; size_t type; } ;
typedef size_t __u32 ;
typedef scalar_t__ __u16 ;
struct TYPE_3__ {struct btf_type** types; } ;
 size_t BTF_MAX_NR_TYPES ;
 int EINVAL ;
 int ENOMEM ;
 struct btf_array* btf_array (struct btf_type*) ;
 int btf_compat_array (struct btf_type*,struct btf_type*) ;
 int btf_compat_enum (struct btf_type*,struct btf_type*) ;
 int btf_compat_fnproto (struct btf_type*,struct btf_type*) ;
 scalar_t__ btf_dedup_hypot_map_add (struct btf_dedup*,size_t,size_t) ;
 int btf_equal_common (struct btf_type*,struct btf_type*) ;
 int btf_equal_enum (struct btf_type*,struct btf_type*) ;
 int btf_equal_int (struct btf_type*,struct btf_type*) ;
 scalar_t__ btf_fwd_kind (struct btf_type*) ;
 scalar_t__ btf_kind (struct btf_type*) ;
 struct btf_member* btf_members (struct btf_type*) ;
 struct btf_param* btf_params (struct btf_type*) ;
 int btf_shallow_equal_struct (struct btf_type*,struct btf_type*) ;
 scalar_t__ btf_vlen (struct btf_type*) ;
 size_t resolve_fwd_id (struct btf_dedup*,size_t) ;
 scalar_t__ resolve_type_id (struct btf_dedup*,size_t) ;

__attribute__((used)) static int btf_dedup_is_equiv(struct btf_dedup *d, __u32 cand_id,
         __u32 canon_id)
{
 struct btf_type *cand_type;
 struct btf_type *canon_type;
 __u32 hypot_type_id;
 __u16 cand_kind;
 __u16 canon_kind;
 int i, eq;


 if (resolve_type_id(d, cand_id) == resolve_type_id(d, canon_id))
  return 1;

 canon_id = resolve_fwd_id(d, canon_id);

 hypot_type_id = d->hypot_map[canon_id];
 if (hypot_type_id <= BTF_MAX_NR_TYPES)
  return hypot_type_id == cand_id;

 if (btf_dedup_hypot_map_add(d, canon_id, cand_id))
  return -ENOMEM;

 cand_type = d->btf->types[cand_id];
 canon_type = d->btf->types[canon_id];
 cand_kind = btf_kind(cand_type);
 canon_kind = btf_kind(canon_type);

 if (cand_type->name_off != canon_type->name_off)
  return 0;


 if (!d->opts.dont_resolve_fwds
     && (cand_kind == 135 || canon_kind == 135)
     && cand_kind != canon_kind) {
  __u16 real_kind;
  __u16 fwd_kind;

  if (cand_kind == 135) {
   real_kind = canon_kind;
   fwd_kind = btf_fwd_kind(cand_type);
  } else {
   real_kind = cand_kind;
   fwd_kind = btf_fwd_kind(canon_type);
  }
  return fwd_kind == real_kind;
 }

 if (cand_kind != canon_kind)
  return 0;

 switch (cand_kind) {
 case 134:
  return btf_equal_int(cand_type, canon_type);

 case 138:
  if (d->opts.dont_resolve_fwds)
   return btf_equal_enum(cand_type, canon_type);
  else
   return btf_compat_enum(cand_type, canon_type);

 case 135:
  return btf_equal_common(cand_type, canon_type);

 case 139:
 case 128:
 case 132:
 case 133:
 case 130:
 case 137:
  if (cand_type->info != canon_type->info)
   return 0;
  return btf_dedup_is_equiv(d, cand_type->type, canon_type->type);

 case 140: {
  const struct btf_array *cand_arr, *canon_arr;

  if (!btf_compat_array(cand_type, canon_type))
   return 0;
  cand_arr = btf_array(cand_type);
  canon_arr = btf_array(canon_type);
  eq = btf_dedup_is_equiv(d,
   cand_arr->index_type, canon_arr->index_type);
  if (eq <= 0)
   return eq;
  return btf_dedup_is_equiv(d, cand_arr->type, canon_arr->type);
 }

 case 131:
 case 129: {
  const struct btf_member *cand_m, *canon_m;
  __u16 vlen;

  if (!btf_shallow_equal_struct(cand_type, canon_type))
   return 0;
  vlen = btf_vlen(cand_type);
  cand_m = btf_members(cand_type);
  canon_m = btf_members(canon_type);
  for (i = 0; i < vlen; i++) {
   eq = btf_dedup_is_equiv(d, cand_m->type, canon_m->type);
   if (eq <= 0)
    return eq;
   cand_m++;
   canon_m++;
  }

  return 1;
 }

 case 136: {
  const struct btf_param *cand_p, *canon_p;
  __u16 vlen;

  if (!btf_compat_fnproto(cand_type, canon_type))
   return 0;
  eq = btf_dedup_is_equiv(d, cand_type->type, canon_type->type);
  if (eq <= 0)
   return eq;
  vlen = btf_vlen(cand_type);
  cand_p = btf_params(cand_type);
  canon_p = btf_params(canon_type);
  for (i = 0; i < vlen; i++) {
   eq = btf_dedup_is_equiv(d, cand_p->type, canon_p->type);
   if (eq <= 0)
    return eq;
   cand_p++;
   canon_p++;
  }
  return 1;
 }

 default:
  return -EINVAL;
 }
 return 0;
}
