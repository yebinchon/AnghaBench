
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;


 scalar_t__ btf_is_enum (struct btf_type*) ;
 scalar_t__ btf_vlen (struct btf_type*) ;

__attribute__((used)) static inline bool btf_is_enum_fwd(struct btf_type *t)
{
 return btf_is_enum(t) && btf_vlen(t) == 0;
}
