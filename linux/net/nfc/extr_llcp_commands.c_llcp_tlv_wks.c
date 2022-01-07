
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int LLCP_TLV_WKS ;
 int llcp_tlv16 (int *,int ) ;

__attribute__((used)) static u16 llcp_tlv_wks(u8 *tlv)
{
 return llcp_tlv16(tlv, LLCP_TLV_WKS);
}
