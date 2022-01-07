
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int __be32 ;


 int NLA_HDRLEN ;
 int htonl (int) ;
 int memcpy (char*,void const*,int) ;
 int memset (char*,int ,int) ;
 int nla_total_size (int) ;

int ife_tlv_meta_encode(void *skbdata, u16 attrtype, u16 dlen, const void *dval)
{
 __be32 *tlv = (__be32 *) (skbdata);
 u16 totlen = nla_total_size(dlen);
 char *dptr = (char *) tlv + NLA_HDRLEN;
 u32 htlv = attrtype << 16 | (dlen + NLA_HDRLEN);

 *tlv = htonl(htlv);
 memset(dptr, 0, totlen - NLA_HDRLEN);
 memcpy(dptr, dval, dlen);

 return totlen;
}
