
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int LLCP_TLV_RW ;
 int llcp_tlv8 (int*,int ) ;

__attribute__((used)) static u8 llcp_tlv_rw(u8 *tlv)
{
 return llcp_tlv8(tlv, LLCP_TLV_RW) & 0xf;
}
