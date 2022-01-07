
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {unsigned int flags; int type; } ;
struct net {int user_ns; } ;
struct TYPE_2__ {int daddr; int frag_off; int ttl; } ;
struct ip_tunnel_parm {int i_flags; int o_flags; TYPE_1__ iph; int o_key; int i_key; } ;
struct ip_tunnel_net {struct net_device* fb_tunnel_dev; int type; } ;
struct ip_tunnel {struct net_device* dev; int parms; int ip_tnl_net_id; struct net* net; } ;


 int CAP_NET_ADMIN ;
 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int EPERM ;
 unsigned int IFF_BROADCAST ;
 unsigned int IFF_POINTOPOINT ;
 int IP_DF ;
 int PTR_ERR_OR_ZERO (struct ip_tunnel*) ;




 int TUNNEL_KEY ;
 int VTI_ISVTI ;
 int htons (int ) ;
 struct ip_tunnel* ip_tunnel_create (struct net*,struct ip_tunnel_net*,struct ip_tunnel_parm*) ;
 struct ip_tunnel* ip_tunnel_find (struct ip_tunnel_net*,struct ip_tunnel_parm*,int ) ;
 int ip_tunnel_update (struct ip_tunnel_net*,struct ip_tunnel*,struct net_device*,struct ip_tunnel_parm*,int,int ) ;
 int ipv4_is_multicast (int ) ;
 int memcpy (struct ip_tunnel_parm*,int *,int) ;
 struct ip_tunnel_net* net_generic (struct net*,int ) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int ns_capable (int ,int ) ;
 int unregister_netdevice (struct net_device*) ;

int ip_tunnel_ioctl(struct net_device *dev, struct ip_tunnel_parm *p, int cmd)
{
 int err = 0;
 struct ip_tunnel *t = netdev_priv(dev);
 struct net *net = t->net;
 struct ip_tunnel_net *itn = net_generic(net, t->ip_tnl_net_id);

 switch (cmd) {
 case 128:
  if (dev == itn->fb_tunnel_dev) {
   t = ip_tunnel_find(itn, p, itn->fb_tunnel_dev->type);
   if (!t)
    t = netdev_priv(dev);
  }
  memcpy(p, &t->parms, sizeof(*p));
  break;

 case 131:
 case 130:
  err = -EPERM;
  if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
   goto done;
  if (p->iph.ttl)
   p->iph.frag_off |= htons(IP_DF);
  if (!(p->i_flags & VTI_ISVTI)) {
   if (!(p->i_flags & TUNNEL_KEY))
    p->i_key = 0;
   if (!(p->o_flags & TUNNEL_KEY))
    p->o_key = 0;
  }

  t = ip_tunnel_find(itn, p, itn->type);

  if (cmd == 131) {
   if (!t) {
    t = ip_tunnel_create(net, itn, p);
    err = PTR_ERR_OR_ZERO(t);
    break;
   }

   err = -EEXIST;
   break;
  }
  if (dev != itn->fb_tunnel_dev && cmd == 130) {
   if (t) {
    if (t->dev != dev) {
     err = -EEXIST;
     break;
    }
   } else {
    unsigned int nflags = 0;

    if (ipv4_is_multicast(p->iph.daddr))
     nflags = IFF_BROADCAST;
    else if (p->iph.daddr)
     nflags = IFF_POINTOPOINT;

    if ((dev->flags^nflags)&(IFF_POINTOPOINT|IFF_BROADCAST)) {
     err = -EINVAL;
     break;
    }

    t = netdev_priv(dev);
   }
  }

  if (t) {
   err = 0;
   ip_tunnel_update(itn, t, dev, p, 1, 0);
  } else {
   err = -ENOENT;
  }
  break;

 case 129:
  err = -EPERM;
  if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
   goto done;

  if (dev == itn->fb_tunnel_dev) {
   err = -ENOENT;
   t = ip_tunnel_find(itn, p, itn->fb_tunnel_dev->type);
   if (!t)
    goto done;
   err = -EPERM;
   if (t == netdev_priv(itn->fb_tunnel_dev))
    goto done;
   dev = t->dev;
  }
  unregister_netdevice(dev);
  err = 0;
  break;

 default:
  err = -EINVAL;
 }

done:
 return err;
}
