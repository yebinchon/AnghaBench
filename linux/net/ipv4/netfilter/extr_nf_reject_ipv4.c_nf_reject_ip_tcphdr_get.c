
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcphdr {scalar_t__ rst; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int frag_off; scalar_t__ protocol; } ;


 scalar_t__ IPPROTO_TCP ;
 int IP_OFFSET ;
 int htons (int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int ip_hdrlen (struct sk_buff*) ;
 scalar_t__ nf_ip_checksum (struct sk_buff*,int,int ,scalar_t__) ;
 struct tcphdr* skb_header_pointer (struct sk_buff*,int ,int,struct tcphdr*) ;

const struct tcphdr *nf_reject_ip_tcphdr_get(struct sk_buff *oldskb,
          struct tcphdr *_oth, int hook)
{
 const struct tcphdr *oth;


 if (ip_hdr(oldskb)->frag_off & htons(IP_OFFSET))
  return ((void*)0);

 if (ip_hdr(oldskb)->protocol != IPPROTO_TCP)
  return ((void*)0);

 oth = skb_header_pointer(oldskb, ip_hdrlen(oldskb),
     sizeof(struct tcphdr), _oth);
 if (oth == ((void*)0))
  return ((void*)0);


 if (oth->rst)
  return ((void*)0);


 if (nf_ip_checksum(oldskb, hook, ip_hdrlen(oldskb), IPPROTO_TCP))
  return ((void*)0);

 return oth;
}
