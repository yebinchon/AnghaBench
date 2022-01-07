
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int info; } ;


 scalar_t__ BTF_INFO_KIND (int ) ;
 scalar_t__ BTF_KIND_STRUCT ;

__attribute__((used)) static bool __btf_type_is_struct(const struct btf_type *t)
{
 return BTF_INFO_KIND(t->info) == BTF_KIND_STRUCT;
}
