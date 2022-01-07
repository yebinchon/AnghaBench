
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct prefix_info {int prefix_len; int prefix; scalar_t__ autoconf; scalar_t__ onlink; int prefered; int valid; } ;
struct net_device {int name; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int * s6_addr; } ;
struct TYPE_3__ {scalar_t__ autoconf; } ;
struct inet6_dev {int lock; TYPE_2__ token; TYPE_1__ cnf; } ;
struct in6_addr {struct in6_addr* s6_addr; } ;
struct fib6_info {int dummy; } ;
typedef int clock_t ;
typedef scalar_t__ __u32 ;


 int GFP_ATOMIC ;
 unsigned long HZ ;
 int IFA_F_STABLE_PRIVACY ;
 int IPV6_ADDR_LINKLOCAL ;
 int IPV6_ADDR_MULTICAST ;
 int RTF_ADDRCONF ;
 int RTF_DEFAULT ;
 int RTF_EXPIRES ;
 int RTF_PREFIX_RT ;
 int RTM_NEWPREFIX ;
 unsigned long USER_HZ ;
 scalar_t__ addrconf_finite_timeout (unsigned long) ;
 struct fib6_info* addrconf_get_prefix_route (int *,int,struct net_device*,int,int ,int) ;
 int addrconf_prefix_rcv_add_addr (struct net*,struct net_device*,struct prefix_info*,struct inet6_dev*,struct in6_addr*,int,int ,int,int,scalar_t__,scalar_t__) ;
 int addrconf_prefix_route (int *,int,int ,struct net_device*,int ,int,int ) ;
 unsigned long addrconf_timeout_fixup (scalar_t__,unsigned long) ;
 struct net* dev_net (struct net_device*) ;
 int fib6_clean_expires (struct fib6_info*) ;
 int fib6_info_release (struct fib6_info*) ;
 int fib6_set_expires (struct fib6_info*,scalar_t__) ;
 struct inet6_dev* in6_dev_get (struct net_device*) ;
 int in6_dev_put (struct inet6_dev*) ;
 int inet6_prefix_notify (int ,struct inet6_dev*,struct prefix_info*) ;
 int ip6_del_rt (struct net*,struct fib6_info*) ;
 int ipv6_addr_any (TYPE_2__*) ;
 int ipv6_addr_type (int *) ;
 scalar_t__ ipv6_generate_eui64 (struct in6_addr*,struct net_device*) ;
 int ipv6_generate_stable_address (struct in6_addr*,int ,struct inet6_dev*) ;
 scalar_t__ ipv6_inherit_eui64 (struct in6_addr*,struct inet6_dev*) ;
 scalar_t__ is_addr_mode_generate_stable (struct inet6_dev*) ;
 scalar_t__ jiffies ;
 int jiffies_to_clock_t (unsigned long) ;
 int memcpy (struct in6_addr*,int *,int) ;
 int ndisc_ops_prefix_rcv_add_addr (struct net*,struct net_device*,struct prefix_info*,struct inet6_dev*,struct in6_addr*,int,int ,int,int,scalar_t__,scalar_t__,int) ;
 int net_dbg_ratelimited (char*,int) ;
 int net_warn_ratelimited (char*) ;
 int netdev_dbg (struct net_device*,char*) ;
 scalar_t__ ntohl (int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

void addrconf_prefix_rcv(struct net_device *dev, u8 *opt, int len, bool sllao)
{
 struct prefix_info *pinfo;
 __u32 valid_lft;
 __u32 prefered_lft;
 int addr_type, err;
 u32 addr_flags = 0;
 struct inet6_dev *in6_dev;
 struct net *net = dev_net(dev);

 pinfo = (struct prefix_info *) opt;

 if (len < sizeof(struct prefix_info)) {
  netdev_dbg(dev, "addrconf: prefix option too short\n");
  return;
 }





 addr_type = ipv6_addr_type(&pinfo->prefix);

 if (addr_type & (IPV6_ADDR_MULTICAST|IPV6_ADDR_LINKLOCAL))
  return;

 valid_lft = ntohl(pinfo->valid);
 prefered_lft = ntohl(pinfo->prefered);

 if (prefered_lft > valid_lft) {
  net_warn_ratelimited("addrconf: prefix option has invalid lifetime\n");
  return;
 }

 in6_dev = in6_dev_get(dev);

 if (!in6_dev) {
  net_dbg_ratelimited("addrconf: device %s not configured\n",
        dev->name);
  return;
 }







 if (pinfo->onlink) {
  struct fib6_info *rt;
  unsigned long rt_expires;






  if (HZ > USER_HZ)
   rt_expires = addrconf_timeout_fixup(valid_lft, HZ);
  else
   rt_expires = addrconf_timeout_fixup(valid_lft, USER_HZ);

  if (addrconf_finite_timeout(rt_expires))
   rt_expires *= HZ;

  rt = addrconf_get_prefix_route(&pinfo->prefix,
            pinfo->prefix_len,
            dev,
            RTF_ADDRCONF | RTF_PREFIX_RT,
            RTF_DEFAULT, 1);

  if (rt) {

   if (valid_lft == 0) {
    ip6_del_rt(net, rt);
    rt = ((void*)0);
   } else if (addrconf_finite_timeout(rt_expires)) {

    fib6_set_expires(rt, jiffies + rt_expires);
   } else {
    fib6_clean_expires(rt);
   }
  } else if (valid_lft) {
   clock_t expires = 0;
   int flags = RTF_ADDRCONF | RTF_PREFIX_RT;
   if (addrconf_finite_timeout(rt_expires)) {

    flags |= RTF_EXPIRES;
    expires = jiffies_to_clock_t(rt_expires);
   }
   addrconf_prefix_route(&pinfo->prefix, pinfo->prefix_len,
           0, dev, expires, flags,
           GFP_ATOMIC);
  }
  fib6_info_release(rt);
 }



 if (pinfo->autoconf && in6_dev->cnf.autoconf) {
  struct in6_addr addr;
  bool tokenized = 0, dev_addr_generated = 0;

  if (pinfo->prefix_len == 64) {
   memcpy(&addr, &pinfo->prefix, 8);

   if (!ipv6_addr_any(&in6_dev->token)) {
    read_lock_bh(&in6_dev->lock);
    memcpy(addr.s6_addr + 8,
           in6_dev->token.s6_addr + 8, 8);
    read_unlock_bh(&in6_dev->lock);
    tokenized = 1;
   } else if (is_addr_mode_generate_stable(in6_dev) &&
       !ipv6_generate_stable_address(&addr, 0,
         in6_dev)) {
    addr_flags |= IFA_F_STABLE_PRIVACY;
    goto ok;
   } else if (ipv6_generate_eui64(addr.s6_addr + 8, dev) &&
       ipv6_inherit_eui64(addr.s6_addr + 8, in6_dev)) {
    goto put;
   } else {
    dev_addr_generated = 1;
   }
   goto ok;
  }
  net_dbg_ratelimited("IPv6 addrconf: prefix with wrong length %d\n",
        pinfo->prefix_len);
  goto put;

ok:
  err = addrconf_prefix_rcv_add_addr(net, dev, pinfo, in6_dev,
         &addr, addr_type,
         addr_flags, sllao,
         tokenized, valid_lft,
         prefered_lft);
  if (err)
   goto put;




  ndisc_ops_prefix_rcv_add_addr(net, dev, pinfo, in6_dev, &addr,
           addr_type, addr_flags, sllao,
           tokenized, valid_lft,
           prefered_lft,
           dev_addr_generated);
 }
 inet6_prefix_notify(RTM_NEWPREFIX, in6_dev, pinfo);
put:
 in6_dev_put(in6_dev);
}
