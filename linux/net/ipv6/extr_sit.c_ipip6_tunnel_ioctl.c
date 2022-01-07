
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sit_net {struct net_device* fb_tunnel_dev; } ;
struct net_device {int flags; } ;
struct net {int user_ns; } ;
struct TYPE_5__ {int version; int ihl; int frag_off; int daddr; int ttl; int protocol; } ;
struct ip_tunnel_prl {TYPE_2__ iph; int relay_prefixlen; int prefixlen; int relay_prefix; int prefix; } ;
struct ip_tunnel_parm {TYPE_2__ iph; int relay_prefixlen; int prefixlen; int relay_prefix; int prefix; } ;
struct ip_tunnel_6rd {TYPE_2__ iph; int relay_prefixlen; int prefixlen; int relay_prefix; int prefix; } ;
struct TYPE_4__ {int relay_prefixlen; int prefixlen; int relay_prefix; int prefix; } ;
struct ip_tunnel {int dst_cache; struct net_device* dev; struct ip_tunnel_prl parms; int fwmark; TYPE_1__ ip6rd; struct net* net; } ;
struct TYPE_6__ {int ifru_data; } ;
struct ifreq {TYPE_3__ ifr_ifru; } ;
typedef int prl ;
typedef int p ;
typedef int ip6rd ;


 int CAP_NET_ADMIN ;
 int EEXIST ;
 int EFAULT ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOENT ;
 int EPERM ;
 int IFF_POINTOPOINT ;
 int IP_DF ;
 int copy_from_user (struct ip_tunnel_prl*,int ,int) ;
 int copy_to_user (int ,struct ip_tunnel_prl*,int) ;
 int dst_cache_reset (int *) ;
 int htons (int ) ;
 int ipip6_tunnel_add_prl (struct ip_tunnel*,struct ip_tunnel_prl*,int) ;
 int ipip6_tunnel_clone_6rd (struct net_device*,struct sit_net*) ;
 int ipip6_tunnel_del_prl (struct ip_tunnel*,struct ip_tunnel_prl*) ;
 int ipip6_tunnel_get_prl (struct ip_tunnel*,int ) ;
 struct ip_tunnel* ipip6_tunnel_locate (struct net*,struct ip_tunnel_prl*,int) ;
 int ipip6_tunnel_update (struct ip_tunnel*,struct ip_tunnel_prl*,int ) ;
 int ipip6_tunnel_update_6rd (struct ip_tunnel*,struct ip_tunnel_prl*) ;
 int ipip6_valid_ip_proto (int ) ;
 int memcpy (struct ip_tunnel_prl*,struct ip_tunnel_prl*,int) ;
 struct sit_net* net_generic (struct net*,int ) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int netdev_state_change (struct net_device*) ;
 int ns_capable (int ,int ) ;
 int sit_net_id ;
 int unregister_netdevice (struct net_device*) ;

__attribute__((used)) static int
ipip6_tunnel_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 int err = 0;
 struct ip_tunnel_parm p;
 struct ip_tunnel_prl prl;
 struct ip_tunnel *t = netdev_priv(dev);
 struct net *net = t->net;
 struct sit_net *sitn = net_generic(net, sit_net_id);




 switch (cmd) {
 case 128:



  if (dev == sitn->fb_tunnel_dev) {
   if (copy_from_user(&p, ifr->ifr_ifru.ifru_data, sizeof(p))) {
    err = -EFAULT;
    break;
   }
   t = ipip6_tunnel_locate(net, &p, 0);
   if (!t)
    t = netdev_priv(dev);
  }

  err = -EFAULT;
  if (cmd == 128) {
   memcpy(&p, &t->parms, sizeof(p));
   if (copy_to_user(ifr->ifr_ifru.ifru_data, &p,
      sizeof(p)))
    goto done;
  }
  err = 0;
  break;

 case 137:
 case 134:
  err = -EPERM;
  if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
   goto done;

  err = -EFAULT;
  if (copy_from_user(&p, ifr->ifr_ifru.ifru_data, sizeof(p)))
   goto done;

  err = -EINVAL;
  if (!ipip6_valid_ip_proto(p.iph.protocol))
   goto done;
  if (p.iph.version != 4 ||
      p.iph.ihl != 5 || (p.iph.frag_off&htons(~IP_DF)))
   goto done;
  if (p.iph.ttl)
   p.iph.frag_off |= htons(IP_DF);

  t = ipip6_tunnel_locate(net, &p, cmd == 137);

  if (dev != sitn->fb_tunnel_dev && cmd == 134) {
   if (t) {
    if (t->dev != dev) {
     err = -EEXIST;
     break;
    }
   } else {
    if (((dev->flags&IFF_POINTOPOINT) && !p.iph.daddr) ||
        (!(dev->flags&IFF_POINTOPOINT) && p.iph.daddr)) {
     err = -EINVAL;
     break;
    }
    t = netdev_priv(dev);
   }

   ipip6_tunnel_update(t, &p, t->fwmark);
  }

  if (t) {
   err = 0;
   if (copy_to_user(ifr->ifr_ifru.ifru_data, &t->parms, sizeof(p)))
    err = -EFAULT;
  } else
   err = (cmd == 137 ? -ENOBUFS : -ENOENT);
  break;

 case 131:
  err = -EPERM;
  if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
   goto done;

  if (dev == sitn->fb_tunnel_dev) {
   err = -EFAULT;
   if (copy_from_user(&p, ifr->ifr_ifru.ifru_data, sizeof(p)))
    goto done;
   err = -ENOENT;
   t = ipip6_tunnel_locate(net, &p, 0);
   if (!t)
    goto done;
   err = -EPERM;
   if (t == netdev_priv(sitn->fb_tunnel_dev))
    goto done;
   dev = t->dev;
  }
  unregister_netdevice(dev);
  err = 0;
  break;

 case 129:
  err = -EINVAL;
  if (dev == sitn->fb_tunnel_dev)
   goto done;
  err = ipip6_tunnel_get_prl(t, ifr->ifr_ifru.ifru_data);
  break;

 case 138:
 case 132:
 case 135:
  err = -EPERM;
  if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
   goto done;
  err = -EINVAL;
  if (dev == sitn->fb_tunnel_dev)
   goto done;
  err = -EFAULT;
  if (copy_from_user(&prl, ifr->ifr_ifru.ifru_data, sizeof(prl)))
   goto done;

  switch (cmd) {
  case 132:
   err = ipip6_tunnel_del_prl(t, &prl);
   break;
  case 138:
  case 135:
   err = ipip6_tunnel_add_prl(t, &prl, cmd == 135);
   break;
  }
  dst_cache_reset(&t->dst_cache);
  netdev_state_change(dev);
  break;
 default:
  err = -EINVAL;
 }

done:
 return err;
}
