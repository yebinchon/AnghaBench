
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct ipv6_sr_hdr {int hdrlen; } ;


 int IPPROTO_ROUTING ;
 scalar_t__ ipv6_find_hdr (struct sk_buff*,int*,int ,int *,int *) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int seg6_validate_srh (struct ipv6_sr_hdr*,int) ;

__attribute__((used)) static struct ipv6_sr_hdr *get_srh(struct sk_buff *skb)
{
 struct ipv6_sr_hdr *srh;
 int len, srhoff = 0;

 if (ipv6_find_hdr(skb, &srhoff, IPPROTO_ROUTING, ((void*)0), ((void*)0)) < 0)
  return ((void*)0);

 if (!pskb_may_pull(skb, srhoff + sizeof(*srh)))
  return ((void*)0);

 srh = (struct ipv6_sr_hdr *)(skb->data + srhoff);

 len = (srh->hdrlen + 1) << 3;

 if (!pskb_may_pull(skb, srhoff + len))
  return ((void*)0);

 if (!seg6_validate_srh(srh, len))
  return ((void*)0);

 return srh;
}
