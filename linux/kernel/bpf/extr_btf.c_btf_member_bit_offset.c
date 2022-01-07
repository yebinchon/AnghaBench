
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btf_type {int dummy; } ;
struct btf_member {int offset; } ;


 int BTF_MEMBER_BIT_OFFSET (int ) ;
 scalar_t__ btf_type_kflag (struct btf_type const*) ;

__attribute__((used)) static u32 btf_member_bit_offset(const struct btf_type *struct_type,
        const struct btf_member *member)
{
 return btf_type_kflag(struct_type) ? BTF_MEMBER_BIT_OFFSET(member->offset)
        : member->offset;
}
