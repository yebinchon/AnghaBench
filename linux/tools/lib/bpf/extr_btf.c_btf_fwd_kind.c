
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
typedef int __u16 ;


 int BTF_KIND_STRUCT ;
 int BTF_KIND_UNION ;
 scalar_t__ btf_kflag (struct btf_type*) ;

__attribute__((used)) static inline __u16 btf_fwd_kind(struct btf_type *t)
{
 return btf_kflag(t) ? BTF_KIND_UNION : BTF_KIND_STRUCT;
}
