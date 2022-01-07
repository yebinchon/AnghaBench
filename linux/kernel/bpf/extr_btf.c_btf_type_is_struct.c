
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct btf_type {int info; } ;


 scalar_t__ BTF_INFO_KIND (int ) ;
 scalar_t__ BTF_KIND_STRUCT ;
 scalar_t__ BTF_KIND_UNION ;

__attribute__((used)) static bool btf_type_is_struct(const struct btf_type *t)
{
 u8 kind = BTF_INFO_KIND(t->info);

 return kind == BTF_KIND_STRUCT || kind == BTF_KIND_UNION;
}
