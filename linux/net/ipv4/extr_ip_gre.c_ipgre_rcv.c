
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnl_ptk_info {scalar_t__ proto; } ;
struct sk_buff {int dev; } ;
struct net {int dummy; } ;
struct ip_tunnel_net {int dummy; } ;


 int ETH_P_TEB ;
 int PACKET_NEXT ;
 int __ipgre_rcv (struct sk_buff*,struct tnl_ptk_info const*,struct ip_tunnel_net*,int,int) ;
 struct net* dev_net (int ) ;
 int gre_tap_net_id ;
 scalar_t__ htons (int ) ;
 int ipgre_net_id ;
 struct ip_tunnel_net* net_generic (struct net*,int ) ;

__attribute__((used)) static int ipgre_rcv(struct sk_buff *skb, const struct tnl_ptk_info *tpi,
       int hdr_len)
{
 struct net *net = dev_net(skb->dev);
 struct ip_tunnel_net *itn;
 int res;

 if (tpi->proto == htons(ETH_P_TEB))
  itn = net_generic(net, gre_tap_net_id);
 else
  itn = net_generic(net, ipgre_net_id);

 res = __ipgre_rcv(skb, tpi, itn, hdr_len, 0);
 if (res == PACKET_NEXT && tpi->proto == htons(ETH_P_TEB)) {



  itn = net_generic(net, ipgre_net_id);
  res = __ipgre_rcv(skb, tpi, itn, hdr_len, 1);
 }
 return res;
}
