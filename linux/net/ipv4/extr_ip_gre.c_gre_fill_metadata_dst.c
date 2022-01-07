
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int mark; } ;
struct rtable {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int src; int dst; } ;
struct TYPE_4__ {TYPE_1__ ipv4; } ;
struct ip_tunnel_key {TYPE_2__ u; int tos; int tun_id; } ;
struct ip_tunnel_info {struct ip_tunnel_key key; } ;
struct flowi4 {int saddr; } ;


 scalar_t__ AF_INET ;
 int EINVAL ;
 int IPPROTO_GRE ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int PTR_ERR (struct rtable*) ;
 int dev_net (struct net_device*) ;
 struct rtable* ip_route_output_key (int ,struct flowi4*) ;
 int ip_rt_put (struct rtable*) ;
 scalar_t__ ip_tunnel_info_af (struct ip_tunnel_info*) ;
 int ip_tunnel_init_flow (struct flowi4*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int skb_get_hash (struct sk_buff*) ;
 struct ip_tunnel_info* skb_tunnel_info (struct sk_buff*) ;
 int tunnel_id_to_key32 (int ) ;

__attribute__((used)) static int gre_fill_metadata_dst(struct net_device *dev, struct sk_buff *skb)
{
 struct ip_tunnel_info *info = skb_tunnel_info(skb);
 const struct ip_tunnel_key *key;
 struct rtable *rt;
 struct flowi4 fl4;

 if (ip_tunnel_info_af(info) != AF_INET)
  return -EINVAL;

 key = &info->key;
 ip_tunnel_init_flow(&fl4, IPPROTO_GRE, key->u.ipv4.dst, key->u.ipv4.src,
       tunnel_id_to_key32(key->tun_id), key->tos, 0,
       skb->mark, skb_get_hash(skb));
 rt = ip_route_output_key(dev_net(dev), &fl4);
 if (IS_ERR(rt))
  return PTR_ERR(rt);

 ip_rt_put(rt);
 info->key.u.ipv4.src = fl4.saddr;
 return 0;
}
