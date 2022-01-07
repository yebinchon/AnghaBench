
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_var_secinfo {size_t type; } ;
struct btf_type {size_t type; } ;
struct btf_param {size_t type; } ;
struct btf_member {size_t type; } ;
struct btf_dump {TYPE_1__* type_states; int btf; } ;
struct btf_array {size_t index_type; size_t type; } ;
typedef int __u16 ;
struct TYPE_2__ {int referenced; } ;
 int EINVAL ;
 int btf__get_nr_types (int ) ;
 struct btf_type* btf__type_by_id (int ,int) ;
 struct btf_array* btf_array (struct btf_type const*) ;
 int btf_kind (struct btf_type const*) ;
 struct btf_member* btf_members (struct btf_type const*) ;
 struct btf_param* btf_params (struct btf_type const*) ;
 struct btf_var_secinfo* btf_var_secinfos (struct btf_type const*) ;
 int btf_vlen (struct btf_type const*) ;

__attribute__((used)) static int btf_dump_mark_referenced(struct btf_dump *d)
{
 int i, j, n = btf__get_nr_types(d->btf);
 const struct btf_type *t;
 __u16 vlen;

 for (i = 1; i <= n; i++) {
  t = btf__type_by_id(d->btf, i);
  vlen = btf_vlen(t);

  switch (btf_kind(t)) {
  case 135:
  case 139:
  case 136:
   break;

  case 128:
  case 141:
  case 133:
  case 134:
  case 131:
  case 138:
  case 129:
   d->type_states[t->type].referenced = 1;
   break;

  case 142: {
   const struct btf_array *a = btf_array(t);

   d->type_states[a->index_type].referenced = 1;
   d->type_states[a->type].referenced = 1;
   break;
  }
  case 132:
  case 130: {
   const struct btf_member *m = btf_members(t);

   for (j = 0; j < vlen; j++, m++)
    d->type_states[m->type].referenced = 1;
   break;
  }
  case 137: {
   const struct btf_param *p = btf_params(t);

   for (j = 0; j < vlen; j++, p++)
    d->type_states[p->type].referenced = 1;
   break;
  }
  case 140: {
   const struct btf_var_secinfo *v = btf_var_secinfos(t);

   for (j = 0; j < vlen; j++, v++)
    d->type_states[v->type].referenced = 1;
   break;
  }
  default:
   return -EINVAL;
  }
 }
 return 0;
}
