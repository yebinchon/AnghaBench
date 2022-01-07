
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int XT_HASHLIMIT_BYTE_SHIFT ;

__attribute__((used)) static u32 xt_hashlimit_len_to_chunks(u32 len)
{
 return (len >> XT_HASHLIMIT_BYTE_SHIFT) + 1;
}
