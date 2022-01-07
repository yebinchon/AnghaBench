
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct meta_tlvhdr {int type; int len; } ;


 scalar_t__ NLA_HDRLEN ;
 int __ife_tlv_meta_valid (void*,void const*) ;
 scalar_t__ nla_total_size (scalar_t__) ;
 scalar_t__ ntohs (int ) ;

void *ife_tlv_meta_decode(void *skbdata, const void *ifehdr_end, u16 *attrtype,
     u16 *dlen, u16 *totlen)
{
 struct meta_tlvhdr *tlv;

 if (!__ife_tlv_meta_valid(skbdata, ifehdr_end))
  return ((void*)0);

 tlv = (struct meta_tlvhdr *)skbdata;
 *dlen = ntohs(tlv->len) - NLA_HDRLEN;
 *attrtype = ntohs(tlv->type);

 if (totlen)
  *totlen = nla_total_size(*dlen);

 return skbdata + sizeof(struct meta_tlvhdr);
}
