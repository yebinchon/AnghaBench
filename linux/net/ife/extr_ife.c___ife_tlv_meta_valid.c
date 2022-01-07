
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct meta_tlvhdr {int len; } ;


 int NLA_ALIGN (scalar_t__) ;
 scalar_t__ NLA_HDRLEN ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool __ife_tlv_meta_valid(const unsigned char *skbdata,
     const unsigned char *ifehdr_end)
{
 const struct meta_tlvhdr *tlv;
 u16 tlvlen;

 if (unlikely(skbdata + sizeof(*tlv) > ifehdr_end))
  return 0;

 tlv = (const struct meta_tlvhdr *)skbdata;
 tlvlen = ntohs(tlv->len);


 if (tlvlen < NLA_HDRLEN)
  return 0;


 if (NLA_ALIGN(tlvlen) < tlvlen)
  return 0;

 if (unlikely(skbdata + NLA_ALIGN(tlvlen) > ifehdr_end))
  return 0;

 return 1;
}
