
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int user_ns; } ;
struct ifreq {scalar_t__* ifr_name; } ;


 int CAP_NET_ADMIN ;
 int ENOTTY ;
 int EPERM ;
 int IFNAMSIZ ;
 unsigned int SIOCDEVPRIVATE ;

 unsigned int SIOCGHWTSTAMP ;







 unsigned int SIOCGIFNAME ;
 unsigned int SIOCWANDEV ;
 int capable (int ) ;
 int dev_ethtool (struct net*,struct ifreq*) ;
 int dev_ifname (struct net*,struct ifreq*) ;
 int dev_ifsioc (struct net*,struct ifreq*,unsigned int) ;
 int dev_ifsioc_locked (struct net*,struct ifreq*,unsigned int) ;
 int dev_load (struct net*,scalar_t__*) ;
 int ns_capable (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 char* strchr (scalar_t__*,char) ;

int dev_ioctl(struct net *net, unsigned int cmd, struct ifreq *ifr, bool *need_copyout)
{
 int ret;
 char *colon;

 if (need_copyout)
  *need_copyout = 1;
 if (cmd == SIOCGIFNAME)
  return dev_ifname(net, ifr);

 ifr->ifr_name[IFNAMSIZ-1] = 0;

 colon = strchr(ifr->ifr_name, ':');
 if (colon)
  *colon = 0;





 switch (cmd) {






 case 151:
 case 146:
 case 145:
 case 150:
 case 144:
 case 148:
 case 149:
 case 143:
  dev_load(net, ifr->ifr_name);
  rcu_read_lock();
  ret = dev_ifsioc_locked(net, ifr, cmd);
  rcu_read_unlock();
  if (colon)
   *colon = ':';
  return ret;

 case 152:
  dev_load(net, ifr->ifr_name);
  rtnl_lock();
  ret = dev_ethtool(net, ifr);
  rtnl_unlock();
  if (colon)
   *colon = ':';
  return ret;







 case 142:
 case 141:
 case 131:
  dev_load(net, ifr->ifr_name);
  if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
   return -EPERM;
  rtnl_lock();
  ret = dev_ifsioc(net, ifr, cmd);
  rtnl_unlock();
  if (colon)
   *colon = ':';
  return ret;







 case 135:
 case 129:
  if (!capable(CAP_NET_ADMIN))
   return -EPERM;







 case 139:
 case 133:
 case 132:
 case 138:
 case 130:
 case 162:
 case 153:
 case 137:
 case 128:
 case 160:
 case 158:
 case 157:
 case 161:
 case 155:
 case 154:
 case 140:
  if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
   return -EPERM;

 case 156:
 case 159:
  dev_load(net, ifr->ifr_name);
  rtnl_lock();
  ret = dev_ifsioc(net, ifr, cmd);
  rtnl_unlock();
  if (need_copyout)
   *need_copyout = 0;
  return ret;

 case 147:


 case 134:


 case 136:
  return -ENOTTY;




 default:
  if (cmd == SIOCWANDEV ||
      cmd == SIOCGHWTSTAMP ||
      (cmd >= SIOCDEVPRIVATE &&
       cmd <= SIOCDEVPRIVATE + 15)) {
   dev_load(net, ifr->ifr_name);
   rtnl_lock();
   ret = dev_ifsioc(net, ifr, cmd);
   rtnl_unlock();
   return ret;
  }
  return -ENOTTY;
 }
}
