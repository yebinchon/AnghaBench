
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int info; } ;


 int BTF_INFO_KIND (int ) ;





__attribute__((used)) static bool btf_type_is_modifier(const struct btf_type *t)
{
 switch (BTF_INFO_KIND(t->info)) {
 case 129:
 case 128:
 case 131:
 case 130:
  return 1;
 }

 return 0;
}
