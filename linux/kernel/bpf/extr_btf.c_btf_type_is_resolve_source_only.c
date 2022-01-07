
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;


 scalar_t__ btf_type_is_datasec (struct btf_type const*) ;
 scalar_t__ btf_type_is_var (struct btf_type const*) ;

__attribute__((used)) static bool btf_type_is_resolve_source_only(const struct btf_type *t)
{
 return btf_type_is_var(t) ||
        btf_type_is_datasec(t);
}
