
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int version; int ihl; int frag_off; int protocol; } ;
struct ip_tunnel_parm {scalar_t__ o_flags; scalar_t__ i_flags; scalar_t__ o_key; scalar_t__ i_key; TYPE_1__ iph; } ;
struct TYPE_4__ {int ifru_data; } ;
struct ifreq {TYPE_2__ ifr_ifru; } ;
typedef int p ;


 int EFAULT ;
 int EINVAL ;
 int IP_DF ;
 int SIOCADDTUNNEL ;
 int SIOCCHGTUNNEL ;
 scalar_t__ copy_from_user (struct ip_tunnel_parm*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct ip_tunnel_parm*,int) ;
 int htons (int ) ;
 int ip_tunnel_ioctl (struct net_device*,struct ip_tunnel_parm*,int) ;
 int ipip_tunnel_ioctl_verify_protocol (int ) ;

__attribute__((used)) static int
ipip_tunnel_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 int err = 0;
 struct ip_tunnel_parm p;

 if (copy_from_user(&p, ifr->ifr_ifru.ifru_data, sizeof(p)))
  return -EFAULT;

 if (cmd == SIOCADDTUNNEL || cmd == SIOCCHGTUNNEL) {
  if (p.iph.version != 4 ||
      !ipip_tunnel_ioctl_verify_protocol(p.iph.protocol) ||
      p.iph.ihl != 5 || (p.iph.frag_off&htons(~IP_DF)))
   return -EINVAL;
 }

 p.i_key = p.o_key = 0;
 p.i_flags = p.o_flags = 0;
 err = ip_tunnel_ioctl(dev, &p, cmd);
 if (err)
  return err;

 if (copy_to_user(ifr->ifr_ifru.ifru_data, &p, sizeof(p)))
  return -EFAULT;

 return 0;
}
