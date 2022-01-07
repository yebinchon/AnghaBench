
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int info; } ;


 int BTF_INFO_KFLAG (int ) ;

__attribute__((used)) static bool btf_type_kflag(const struct btf_type *t)
{
 return BTF_INFO_KFLAG(t->info);
}
