
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int dev; } ;
struct iphdr {int dummy; } ;
struct TYPE_3__ {int gateway; } ;
struct TYPE_4__ {TYPE_1__ un; } ;


 int ICMP_MIB_INERRORS ;
 int __ICMP_INC_STATS (int ,int ) ;
 int dev_net (int ) ;
 TYPE_2__* icmp_hdr (struct sk_buff*) ;
 int icmp_socket_deliver (struct sk_buff*,int ) ;
 int ntohl (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;

__attribute__((used)) static bool icmp_redirect(struct sk_buff *skb)
{
 if (skb->len < sizeof(struct iphdr)) {
  __ICMP_INC_STATS(dev_net(skb->dev), ICMP_MIB_INERRORS);
  return 0;
 }

 if (!pskb_may_pull(skb, sizeof(struct iphdr))) {

  return 0;
 }

 icmp_socket_deliver(skb, ntohl(icmp_hdr(skb)->un.gateway));
 return 1;
}
