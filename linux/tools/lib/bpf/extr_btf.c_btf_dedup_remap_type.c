
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_var_secinfo {int type; } ;
struct btf_type {int type; } ;
struct btf_param {int type; } ;
struct btf_member {int type; } ;
struct btf_dedup {TYPE_1__* btf; } ;
struct btf_array {int type; int index_type; } ;
typedef size_t __u32 ;
typedef int __u16 ;
struct TYPE_2__ {struct btf_type** types; } ;
 int EINVAL ;
 struct btf_array* btf_array (struct btf_type*) ;
 int btf_dedup_remap_type_id (struct btf_dedup*,int) ;
 int btf_kind (struct btf_type*) ;
 struct btf_member* btf_members (struct btf_type*) ;
 struct btf_param* btf_params (struct btf_type*) ;
 struct btf_var_secinfo* btf_var_secinfos (struct btf_type*) ;
 int btf_vlen (struct btf_type*) ;

__attribute__((used)) static int btf_dedup_remap_type(struct btf_dedup *d, __u32 type_id)
{
 struct btf_type *t = d->btf->types[type_id];
 int i, r;

 switch (btf_kind(t)) {
 case 135:
 case 139:
  break;

 case 136:
 case 141:
 case 128:
 case 133:
 case 134:
 case 131:
 case 138:
 case 129:
  r = btf_dedup_remap_type_id(d, t->type);
  if (r < 0)
   return r;
  t->type = r;
  break;

 case 142: {
  struct btf_array *arr_info = btf_array(t);

  r = btf_dedup_remap_type_id(d, arr_info->type);
  if (r < 0)
   return r;
  arr_info->type = r;
  r = btf_dedup_remap_type_id(d, arr_info->index_type);
  if (r < 0)
   return r;
  arr_info->index_type = r;
  break;
 }

 case 132:
 case 130: {
  struct btf_member *member = btf_members(t);
  __u16 vlen = btf_vlen(t);

  for (i = 0; i < vlen; i++) {
   r = btf_dedup_remap_type_id(d, member->type);
   if (r < 0)
    return r;
   member->type = r;
   member++;
  }
  break;
 }

 case 137: {
  struct btf_param *param = btf_params(t);
  __u16 vlen = btf_vlen(t);

  r = btf_dedup_remap_type_id(d, t->type);
  if (r < 0)
   return r;
  t->type = r;

  for (i = 0; i < vlen; i++) {
   r = btf_dedup_remap_type_id(d, param->type);
   if (r < 0)
    return r;
   param->type = r;
   param++;
  }
  break;
 }

 case 140: {
  struct btf_var_secinfo *var = btf_var_secinfos(t);
  __u16 vlen = btf_vlen(t);

  for (i = 0; i < vlen; i++) {
   r = btf_dedup_remap_type_id(d, var->type);
   if (r < 0)
    return r;
   var->type = r;
   var++;
  }
  break;
 }

 default:
  return -EINVAL;
 }

 return 0;
}
