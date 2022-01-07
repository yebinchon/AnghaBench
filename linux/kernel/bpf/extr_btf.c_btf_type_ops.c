
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int info; } ;
struct btf_kind_operations {int dummy; } ;


 size_t BTF_INFO_KIND (int ) ;
 struct btf_kind_operations const** kind_ops ;

__attribute__((used)) static const struct btf_kind_operations *btf_type_ops(const struct btf_type *t)
{
 return kind_ops[BTF_INFO_KIND(t->info)];
}
