
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; int len; } ;
struct sr6_tlv_hmac {TYPE_1__ tlvhdr; } ;
struct ipv6_sr_hdr {int hdrlen; int first_segment; } ;


 scalar_t__ SR6_TLV_HMAC ;
 int sr_has_hmac (struct ipv6_sr_hdr*) ;

__attribute__((used)) static struct sr6_tlv_hmac *seg6_get_tlv_hmac(struct ipv6_sr_hdr *srh)
{
 struct sr6_tlv_hmac *tlv;

 if (srh->hdrlen < (srh->first_segment + 1) * 2 + 5)
  return ((void*)0);

 if (!sr_has_hmac(srh))
  return ((void*)0);

 tlv = (struct sr6_tlv_hmac *)
       ((char *)srh + ((srh->hdrlen + 1) << 3) - 40);

 if (tlv->tlvhdr.type != SR6_TLV_HMAC || tlv->tlvhdr.len != 38)
  return ((void*)0);

 return tlv;
}
