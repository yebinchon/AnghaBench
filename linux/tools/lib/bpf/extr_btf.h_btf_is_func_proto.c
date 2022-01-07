
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;


 scalar_t__ BTF_KIND_FUNC_PROTO ;
 scalar_t__ btf_kind (struct btf_type const*) ;

__attribute__((used)) static inline bool btf_is_func_proto(const struct btf_type *t)
{
 return btf_kind(t) == BTF_KIND_FUNC_PROTO;
}
