
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {scalar_t__ name_off; scalar_t__ info; } ;
struct btf_param {scalar_t__ name_off; } ;
typedef int __u16 ;


 struct btf_param* btf_params (struct btf_type*) ;
 int btf_vlen (struct btf_type*) ;

__attribute__((used)) static bool btf_compat_fnproto(struct btf_type *t1, struct btf_type *t2)
{
 const struct btf_param *m1, *m2;
 __u16 vlen;
 int i;


 if (t1->name_off != t2->name_off || t1->info != t2->info)
  return 0;

 vlen = btf_vlen(t1);
 m1 = btf_params(t1);
 m2 = btf_params(t2);
 for (i = 0; i < vlen; i++) {
  if (m1->name_off != m2->name_off)
   return 0;
  m1++;
  m2++;
 }
 return 1;
}
