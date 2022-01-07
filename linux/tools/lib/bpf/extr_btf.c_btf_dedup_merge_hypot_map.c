
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_dedup {int hypot_cnt; size_t* hypot_list; size_t* hypot_map; size_t* map; TYPE_1__* btf; } ;
typedef size_t __u32 ;
typedef scalar_t__ __u16 ;
struct TYPE_2__ {int * types; } ;


 scalar_t__ BTF_KIND_FWD ;
 scalar_t__ BTF_KIND_STRUCT ;
 scalar_t__ BTF_KIND_UNION ;
 scalar_t__ btf_kind (int ) ;
 scalar_t__ is_type_mapped (struct btf_dedup*,size_t) ;
 size_t resolve_type_id (struct btf_dedup*,size_t) ;

__attribute__((used)) static void btf_dedup_merge_hypot_map(struct btf_dedup *d)
{
 __u32 cand_type_id, targ_type_id;
 __u16 t_kind, c_kind;
 __u32 t_id, c_id;
 int i;

 for (i = 0; i < d->hypot_cnt; i++) {
  cand_type_id = d->hypot_list[i];
  targ_type_id = d->hypot_map[cand_type_id];
  t_id = resolve_type_id(d, targ_type_id);
  c_id = resolve_type_id(d, cand_type_id);
  t_kind = btf_kind(d->btf->types[t_id]);
  c_kind = btf_kind(d->btf->types[c_id]);
  if (t_kind != BTF_KIND_FWD && c_kind == BTF_KIND_FWD)
   d->map[c_id] = t_id;
  else if (t_kind == BTF_KIND_FWD && c_kind != BTF_KIND_FWD)
   d->map[t_id] = c_id;

  if ((t_kind == BTF_KIND_STRUCT || t_kind == BTF_KIND_UNION) &&
      c_kind != BTF_KIND_FWD &&
      is_type_mapped(d, c_id) &&
      !is_type_mapped(d, t_id)) {






   d->map[t_id] = c_id;
  }
 }
}
