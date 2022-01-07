
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btf_type {int type; int size; } ;
struct btf_member {int type; } ;
struct btf {int dummy; } ;
typedef int __u32 ;
typedef int __u16 ;
struct TYPE_2__ {int type; } ;
 struct btf_type* btf__type_by_id (struct btf const*,int ) ;
 TYPE_1__* btf_array (struct btf_type const*) ;
 int btf_kind (struct btf_type const*) ;
 struct btf_member* btf_members (struct btf_type const*) ;
 int btf_vlen (struct btf_type const*) ;
 int max (int,int) ;
 int min (int,int ) ;
 int pr_warning (char*,int) ;

__attribute__((used)) static int btf_align_of(const struct btf *btf, __u32 id)
{
 const struct btf_type *t = btf__type_by_id(btf, id);
 __u16 kind = btf_kind(t);

 switch (kind) {
 case 134:
 case 135:
  return min(sizeof(void *), t->size);
 case 133:
  return sizeof(void *);
 case 130:
 case 128:
 case 136:
 case 132:
  return btf_align_of(btf, t->type);
 case 137:
  return btf_align_of(btf, btf_array(t)->type);
 case 131:
 case 129: {
  const struct btf_member *m = btf_members(t);
  __u16 vlen = btf_vlen(t);
  int i, align = 1;

  for (i = 0; i < vlen; i++, m++)
   align = max(align, btf_align_of(btf, m->type));

  return align;
 }
 default:
  pr_warning("unsupported BTF_KIND:%u\n", btf_kind(t));
  return 1;
 }
}
