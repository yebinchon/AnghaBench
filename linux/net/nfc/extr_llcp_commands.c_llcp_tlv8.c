
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t* llcp_tlv_length ;

__attribute__((used)) static u8 llcp_tlv8(u8 *tlv, u8 type)
{
 if (tlv[0] != type || tlv[1] != llcp_tlv_length[tlv[0]])
  return 0;

 return tlv[2];
}
