
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;


 scalar_t__ btf_type_is_func (struct btf_type const*) ;
 scalar_t__ btf_type_is_func_proto (struct btf_type const*) ;
 scalar_t__ btf_type_is_fwd (struct btf_type const*) ;
 scalar_t__ btf_type_is_void (struct btf_type const*) ;

__attribute__((used)) static bool btf_type_nosize(const struct btf_type *t)
{
 return btf_type_is_void(t) || btf_type_is_fwd(t) ||
        btf_type_is_func(t) || btf_type_is_func_proto(t);
}
