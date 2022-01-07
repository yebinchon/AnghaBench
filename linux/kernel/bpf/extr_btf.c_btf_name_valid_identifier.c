
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct btf {int dummy; } ;


 int __btf_name_valid (struct btf const*,int ,int) ;

__attribute__((used)) static bool btf_name_valid_identifier(const struct btf *btf, u32 offset)
{
 return __btf_name_valid(btf, offset, 0);
}
