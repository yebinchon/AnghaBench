
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sit_net {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_7__ {int frag_off; int tos; int ttl; int daddr; int saddr; } ;
struct ip_tunnel_parm {scalar_t__ link; TYPE_2__ iph; } ;
struct TYPE_6__ {int frag_off; int tos; int ttl; int daddr; int saddr; } ;
struct TYPE_8__ {scalar_t__ link; TYPE_1__ iph; } ;
struct ip_tunnel {scalar_t__ fwmark; TYPE_4__* dev; int dst_cache; TYPE_3__ parms; struct net* net; } ;
typedef scalar_t__ __u32 ;
struct TYPE_9__ {int broadcast; int dev_addr; } ;


 int dst_cache_reset (int *) ;
 int ipip6_tunnel_bind_dev (TYPE_4__*) ;
 int ipip6_tunnel_link (struct sit_net*,struct ip_tunnel*) ;
 int ipip6_tunnel_unlink (struct sit_net*,struct ip_tunnel*) ;
 int memcpy (int ,int *,int) ;
 struct sit_net* net_generic (struct net*,int ) ;
 int netdev_state_change (TYPE_4__*) ;
 int sit_net_id ;
 int synchronize_net () ;

__attribute__((used)) static void ipip6_tunnel_update(struct ip_tunnel *t, struct ip_tunnel_parm *p,
    __u32 fwmark)
{
 struct net *net = t->net;
 struct sit_net *sitn = net_generic(net, sit_net_id);

 ipip6_tunnel_unlink(sitn, t);
 synchronize_net();
 t->parms.iph.saddr = p->iph.saddr;
 t->parms.iph.daddr = p->iph.daddr;
 memcpy(t->dev->dev_addr, &p->iph.saddr, 4);
 memcpy(t->dev->broadcast, &p->iph.daddr, 4);
 ipip6_tunnel_link(sitn, t);
 t->parms.iph.ttl = p->iph.ttl;
 t->parms.iph.tos = p->iph.tos;
 t->parms.iph.frag_off = p->iph.frag_off;
 if (t->parms.link != p->link || t->fwmark != fwmark) {
  t->parms.link = p->link;
  t->fwmark = fwmark;
  ipip6_tunnel_bind_dev(t->dev);
 }
 dst_cache_reset(&t->dst_cache);
 netdev_state_change(t->dev);
}
