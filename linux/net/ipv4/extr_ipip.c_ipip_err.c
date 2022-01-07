
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {TYPE_4__* dev; scalar_t__ data; } ;
struct net {int dummy; } ;
struct iphdr {int protocol; int saddr; int daddr; } ;
struct ip_tunnel_net {int dummy; } ;
struct TYPE_5__ {scalar_t__ daddr; scalar_t__ ttl; } ;
struct TYPE_6__ {TYPE_1__ iph; int link; } ;
struct ip_tunnel {int err_count; scalar_t__ err_time; TYPE_2__ parms; } ;
struct TYPE_8__ {int ifindex; } ;
struct TYPE_7__ {int type; int code; } ;


 int ENOENT ;

 int const ICMP_EXC_TTL ;
 int const ICMP_FRAG_NEEDED ;



 scalar_t__ IPTUNNEL_ERR_TIMEO ;
 int TUNNEL_NO_KEY ;
 struct net* dev_net (TYPE_4__*) ;
 TYPE_3__* icmp_hdr (struct sk_buff*) ;
 struct ip_tunnel* ip_tunnel_lookup (struct ip_tunnel_net*,int ,int ,int ,int ,int ) ;
 int ipip_net_id ;
 int ipv4_redirect (struct sk_buff*,struct net*,int ,int ) ;
 int ipv4_update_pmtu (struct sk_buff*,struct net*,int ,int ,int ) ;
 scalar_t__ jiffies ;
 struct ip_tunnel_net* net_generic (struct net*,int ) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ipip_err(struct sk_buff *skb, u32 info)
{




 struct net *net = dev_net(skb->dev);
 struct ip_tunnel_net *itn = net_generic(net, ipip_net_id);
 const struct iphdr *iph = (const struct iphdr *)skb->data;
 const int type = icmp_hdr(skb)->type;
 const int code = icmp_hdr(skb)->code;
 struct ip_tunnel *t;
 int err = 0;

 t = ip_tunnel_lookup(itn, skb->dev->ifindex, TUNNEL_NO_KEY,
        iph->daddr, iph->saddr, 0);
 if (!t) {
  err = -ENOENT;
  goto out;
 }

 switch (type) {
 case 131:
  switch (code) {
  case 129:

   goto out;
  default:




   break;
  }
  break;

 case 128:
  if (code != ICMP_EXC_TTL)
   goto out;
  break;

 case 130:
  break;

 default:
  goto out;
 }

 if (type == 131 && code == ICMP_FRAG_NEEDED) {
  ipv4_update_pmtu(skb, net, info, t->parms.link, iph->protocol);
  goto out;
 }

 if (type == 130) {
  ipv4_redirect(skb, net, t->parms.link, iph->protocol);
  goto out;
 }

 if (t->parms.iph.daddr == 0) {
  err = -ENOENT;
  goto out;
 }

 if (t->parms.iph.ttl == 0 && type == 128)
  goto out;

 if (time_before(jiffies, t->err_time + IPTUNNEL_ERR_TIMEO))
  t->err_count++;
 else
  t->err_count = 1;
 t->err_time = jiffies;

out:
 return err;
}
