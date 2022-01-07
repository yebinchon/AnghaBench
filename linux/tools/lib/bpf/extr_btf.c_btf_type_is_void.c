
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;


 scalar_t__ btf_is_fwd (struct btf_type const*) ;
 struct btf_type const btf_void ;

__attribute__((used)) static bool btf_type_is_void(const struct btf_type *t)
{
 return t == &btf_void || btf_is_fwd(t);
}
