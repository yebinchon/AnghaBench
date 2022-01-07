
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
struct btf_member {scalar_t__ name_off; scalar_t__ offset; } ;
typedef int __u16 ;


 int btf_equal_common (struct btf_type*,struct btf_type*) ;
 struct btf_member* btf_members (struct btf_type*) ;
 int btf_vlen (struct btf_type*) ;

__attribute__((used)) static bool btf_shallow_equal_struct(struct btf_type *t1, struct btf_type *t2)
{
 const struct btf_member *m1, *m2;
 __u16 vlen;
 int i;

 if (!btf_equal_common(t1, t2))
  return 0;

 vlen = btf_vlen(t1);
 m1 = btf_members(t1);
 m2 = btf_members(t2);
 for (i = 0; i < vlen; i++) {
  if (m1->name_off != m2->name_off || m1->offset != m2->offset)
   return 0;
  m1++;
  m2++;
 }
 return 1;
}
