
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
struct btf_member {int type; int name_off; } ;
struct btf {int dummy; } ;
struct bpf_core_spec {scalar_t__ raw_len; int offset; int* raw_spec; int len; struct bpf_core_accessor* spec; } ;
struct bpf_core_accessor {int type_id; int idx; char const* name; } ;
typedef int __u32 ;


 scalar_t__ BPF_CORE_SPEC_MAX_LEN ;
 int E2BIG ;
 int EINVAL ;
 int bpf_core_fields_are_compat (struct btf const*,int,struct btf const*,int) ;
 char* btf__name_by_offset (struct btf const*,int ) ;
 struct btf_type* btf__type_by_id (struct btf const*,int) ;
 int btf_is_composite (struct btf_type const*) ;
 int btf_member_bit_offset (struct btf_type const*,int) ;
 scalar_t__ btf_member_bitfield_size (struct btf_type const*,int) ;
 struct btf_member* btf_members (struct btf_type const*) ;
 int btf_vlen (struct btf_type const*) ;
 struct btf_type* skip_mods_and_typedefs (struct btf const*,int,int*) ;
 scalar_t__ str_is_empty (char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int bpf_core_match_member(const struct btf *local_btf,
     const struct bpf_core_accessor *local_acc,
     const struct btf *targ_btf,
     __u32 targ_id,
     struct bpf_core_spec *spec,
     __u32 *next_targ_id)
{
 const struct btf_type *local_type, *targ_type;
 const struct btf_member *local_member, *m;
 const char *local_name, *targ_name;
 __u32 local_id;
 int i, n, found;

 targ_type = skip_mods_and_typedefs(targ_btf, targ_id, &targ_id);
 if (!targ_type)
  return -EINVAL;
 if (!btf_is_composite(targ_type))
  return 0;

 local_id = local_acc->type_id;
 local_type = btf__type_by_id(local_btf, local_id);
 local_member = btf_members(local_type) + local_acc->idx;
 local_name = btf__name_by_offset(local_btf, local_member->name_off);

 n = btf_vlen(targ_type);
 m = btf_members(targ_type);
 for (i = 0; i < n; i++, m++) {
  __u32 offset;


  if (btf_member_bitfield_size(targ_type, i))
   continue;
  offset = btf_member_bit_offset(targ_type, i);
  if (offset % 8)
   continue;


  if (spec->raw_len == BPF_CORE_SPEC_MAX_LEN)
   return -E2BIG;


  spec->offset += offset / 8;
  spec->raw_spec[spec->raw_len++] = i;

  targ_name = btf__name_by_offset(targ_btf, m->name_off);
  if (str_is_empty(targ_name)) {

   found = bpf_core_match_member(local_btf, local_acc,
            targ_btf, m->type,
            spec, next_targ_id);
   if (found)
    return found;
  } else if (strcmp(local_name, targ_name) == 0) {

   struct bpf_core_accessor *targ_acc;

   targ_acc = &spec->spec[spec->len++];
   targ_acc->type_id = targ_id;
   targ_acc->idx = i;
   targ_acc->name = targ_name;

   *next_targ_id = m->type;
   found = bpf_core_fields_are_compat(local_btf,
          local_member->type,
          targ_btf, m->type);
   if (!found)
    spec->len--;
   return found;
  }

  spec->offset -= offset / 8;
  spec->raw_len--;
 }

 return 0;
}
