
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; } ;
struct TYPE_5__ {int error; struct net_device* dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int peers; } ;
struct net {TYPE_2__ ipv4; } ;
struct inet_peer {unsigned long rate_tokens; unsigned long rate_last; } ;
struct in_device {int dummy; } ;
struct TYPE_8__ {int iif; } ;
struct TYPE_7__ {int saddr; } ;






 int ICMP_DEST_UNREACH ;
 int ICMP_HOST_UNREACH ;
 int ICMP_NET_UNREACH ;
 int ICMP_PKT_FILTERED ;
 int IN_DEV_FORWARD (struct in_device*) ;
 TYPE_4__* IPCB (struct sk_buff*) ;
 int IPSTATS_MIB_INADDRERRORS ;
 int IPSTATS_MIB_INNOROUTES ;
 int __IP_INC_STATS (struct net*,int ) ;
 struct net_device* __dev_get_by_index (struct net*,int ) ;
 struct in_device* __in_dev_get_rcu (struct net_device*) ;
 struct net* dev_net (struct net_device*) ;
 int icmp_send (struct sk_buff*,int ,int,int ) ;
 struct inet_peer* inet_getpeer_v4 (int ,int ,int ,int) ;
 int inet_putpeer (struct inet_peer*) ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_rt_error_burst ;
 scalar_t__ ip_rt_error_cost ;
 unsigned long jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int l3mdev_master_ifindex (struct net_device*) ;
 scalar_t__ netif_is_l3_master (struct net_device*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;

__attribute__((used)) static int ip_error(struct sk_buff *skb)
{
 struct rtable *rt = skb_rtable(skb);
 struct net_device *dev = skb->dev;
 struct in_device *in_dev;
 struct inet_peer *peer;
 unsigned long now;
 struct net *net;
 bool send;
 int code;

 if (netif_is_l3_master(skb->dev)) {
  dev = __dev_get_by_index(dev_net(skb->dev), IPCB(skb)->iif);
  if (!dev)
   goto out;
 }

 in_dev = __in_dev_get_rcu(dev);


 if (!in_dev)
  goto out;

 net = dev_net(rt->dst.dev);
 if (!IN_DEV_FORWARD(in_dev)) {
  switch (rt->dst.error) {
  case 130:
   __IP_INC_STATS(net, IPSTATS_MIB_INADDRERRORS);
   break;

  case 128:
   __IP_INC_STATS(net, IPSTATS_MIB_INNOROUTES);
   break;
  }
  goto out;
 }

 switch (rt->dst.error) {
 case 129:
 default:
  goto out;
 case 130:
  code = ICMP_HOST_UNREACH;
  break;
 case 128:
  code = ICMP_NET_UNREACH;
  __IP_INC_STATS(net, IPSTATS_MIB_INNOROUTES);
  break;
 case 131:
  code = ICMP_PKT_FILTERED;
  break;
 }

 peer = inet_getpeer_v4(net->ipv4.peers, ip_hdr(skb)->saddr,
          l3mdev_master_ifindex(skb->dev), 1);

 send = 1;
 if (peer) {
  now = jiffies;
  peer->rate_tokens += now - peer->rate_last;
  if (peer->rate_tokens > ip_rt_error_burst)
   peer->rate_tokens = ip_rt_error_burst;
  peer->rate_last = now;
  if (peer->rate_tokens >= ip_rt_error_cost)
   peer->rate_tokens -= ip_rt_error_cost;
  else
   send = 0;
  inet_putpeer(peer);
 }
 if (send)
  icmp_send(skb, ICMP_DEST_UNREACH, code, 0);

out: kfree_skb(skb);
 return 0;
}
