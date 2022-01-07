
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct meta_tlvhdr {int len; } ;


 int NLA_ALIGN (int) ;
 int ntohs (int ) ;

void *ife_tlv_meta_next(void *skbdata)
{
 struct meta_tlvhdr *tlv = (struct meta_tlvhdr *) skbdata;
 u16 tlvlen = ntohs(tlv->len);

 tlvlen = NLA_ALIGN(tlvlen);

 return skbdata + tlvlen;
}
