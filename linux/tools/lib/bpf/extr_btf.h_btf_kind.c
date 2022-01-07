
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int info; } ;
typedef int __u16 ;


 int BTF_INFO_KIND (int ) ;

__attribute__((used)) static inline __u16 btf_kind(const struct btf_type *t)
{
 return BTF_INFO_KIND(t->info);
}
