
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sr6_tlv {int len; } ;
struct ipv6_sr_hdr {scalar_t__ type; int hdrlen; int segments_left; int first_segment; } ;


 scalar_t__ IPV6_SRCRT_TYPE_4 ;

bool seg6_validate_srh(struct ipv6_sr_hdr *srh, int len)
{
 int trailing;
 unsigned int tlv_offset;

 if (srh->type != IPV6_SRCRT_TYPE_4)
  return 0;

 if (((srh->hdrlen + 1) << 3) != len)
  return 0;

 if (srh->segments_left > srh->first_segment)
  return 0;

 tlv_offset = sizeof(*srh) + ((srh->first_segment + 1) << 4);

 trailing = len - tlv_offset;
 if (trailing < 0)
  return 0;

 while (trailing) {
  struct sr6_tlv *tlv;
  unsigned int tlv_len;

  if (trailing < sizeof(*tlv))
   return 0;

  tlv = (struct sr6_tlv *)((unsigned char *)srh + tlv_offset);
  tlv_len = sizeof(*tlv) + tlv->len;

  trailing -= tlv_len;
  if (trailing < 0)
   return 0;

  tlv_offset += tlv_len;
 }

 return 1;
}
