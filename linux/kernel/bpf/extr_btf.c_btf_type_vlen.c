
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct btf_type {int info; } ;


 int BTF_INFO_VLEN (int ) ;

__attribute__((used)) static u16 btf_type_vlen(const struct btf_type *t)
{
 return BTF_INFO_VLEN(t->info);
}
