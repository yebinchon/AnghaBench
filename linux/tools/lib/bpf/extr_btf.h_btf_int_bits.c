
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int dummy; } ;
typedef int __u8 ;
typedef int __u32 ;


 int BTF_INT_BITS (int ) ;

__attribute__((used)) static inline __u8 btf_int_bits(const struct btf_type *t)
{
 return BTF_INT_BITS(*(__u32 *)(t + 1));
}
