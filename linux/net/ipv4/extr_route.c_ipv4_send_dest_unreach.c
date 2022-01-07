
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dev; } ;
struct iphdr {int dummy; } ;
struct ip_options {int optlen; } ;
typedef int opt ;
struct TYPE_2__ {int version; int ihl; } ;


 int ICMP_DEST_UNREACH ;
 int ICMP_HOST_UNREACH ;
 int __icmp_send (struct sk_buff*,int ,int ,int ,struct ip_options*) ;
 int __ip_options_compile (int ,struct ip_options*,struct sk_buff*,int *) ;
 int dev_net (int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int memset (struct ip_options*,int ,int) ;
 int pskb_network_may_pull (struct sk_buff*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void ipv4_send_dest_unreach(struct sk_buff *skb)
{
 struct ip_options opt;
 int res;




 if (!pskb_network_may_pull(skb, sizeof(struct iphdr)) ||
     ip_hdr(skb)->version != 4 || ip_hdr(skb)->ihl < 5)
  return;

 memset(&opt, 0, sizeof(opt));
 if (ip_hdr(skb)->ihl > 5) {
  if (!pskb_network_may_pull(skb, ip_hdr(skb)->ihl * 4))
   return;
  opt.optlen = ip_hdr(skb)->ihl * 4 - sizeof(struct iphdr);

  rcu_read_lock();
  res = __ip_options_compile(dev_net(skb->dev), &opt, skb, ((void*)0));
  rcu_read_unlock();

  if (res)
   return;
 }
 __icmp_send(skb, ICMP_DEST_UNREACH, ICMP_HOST_UNREACH, 0, &opt);
}
