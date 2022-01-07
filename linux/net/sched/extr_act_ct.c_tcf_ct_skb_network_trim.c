
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {unsigned int len; } ;
struct ipv6hdr {int dummy; } ;
struct TYPE_4__ {int tot_len; } ;
struct TYPE_3__ {int payload_len; } ;




 TYPE_2__* ip_hdr (struct sk_buff*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 unsigned int ntohs (int ) ;
 int pskb_trim_rcsum (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int tcf_ct_skb_network_trim(struct sk_buff *skb, int family)
{
 unsigned int len;
 int err;

 switch (family) {
 case 129:
  len = ntohs(ip_hdr(skb)->tot_len);
  break;
 case 128:
  len = sizeof(struct ipv6hdr)
   + ntohs(ipv6_hdr(skb)->payload_len);
  break;
 default:
  len = skb->len;
 }

 err = pskb_trim_rcsum(skb, len);

 return err;
}
