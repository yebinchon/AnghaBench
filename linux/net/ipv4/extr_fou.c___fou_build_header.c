
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dev; } ;
struct ip_tunnel_encap {scalar_t__ sport; } ;
typedef int __be16 ;


 int dev_net (int ) ;
 int iptunnel_handle_offloads (struct sk_buff*,int) ;
 int udp_flow_src_port (int ,struct sk_buff*,int ,int ,int) ;

int __fou_build_header(struct sk_buff *skb, struct ip_tunnel_encap *e,
         u8 *protocol, __be16 *sport, int type)
{
 int err;

 err = iptunnel_handle_offloads(skb, type);
 if (err)
  return err;

 *sport = e->sport ? : udp_flow_src_port(dev_net(skb->dev),
      skb, 0, 0, 0);

 return 0;
}
