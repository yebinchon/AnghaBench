
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
typedef int __be16 ;


 int be16_to_cpu (int ) ;
 size_t* llcp_tlv_length ;

__attribute__((used)) static u16 llcp_tlv16(u8 *tlv, u8 type)
{
 if (tlv[0] != type || tlv[1] != llcp_tlv_length[tlv[0]])
  return 0;

 return be16_to_cpu(*((__be16 *)(tlv + 2)));
}
