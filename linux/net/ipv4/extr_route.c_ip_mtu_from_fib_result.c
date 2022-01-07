
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int mtu; } ;
struct fib_result {struct fib_info* fi; struct fib_nh_common* nhc; } ;
struct fib_nh_exception {scalar_t__ fnhe_pmtu; int fnhe_expires; } ;
struct fib_nh_common {int nhc_lwtstate; struct net_device* nhc_dev; } ;
struct fib_info {scalar_t__ fib_mtu; TYPE_2__* fib_metrics; } ;
typedef int __be32 ;
struct TYPE_4__ {scalar_t__ sysctl_ip_fwd_use_pmtu; } ;
struct TYPE_6__ {TYPE_1__ ipv4; } ;
struct TYPE_5__ {int* metrics; } ;


 int IP_MAX_MTU ;
 int READ_ONCE (int ) ;
 int RTAX_LOCK ;
 int RTAX_MTU ;
 TYPE_3__* dev_net (struct net_device*) ;
 struct fib_nh_exception* find_exception (struct fib_nh_common*,int ) ;
 int jiffies ;
 scalar_t__ likely (int) ;
 scalar_t__ lwtunnel_headroom (int ,scalar_t__) ;
 scalar_t__ min (int ,int ) ;
 int time_after_eq (int ,int ) ;

u32 ip_mtu_from_fib_result(struct fib_result *res, __be32 daddr)
{
 struct fib_nh_common *nhc = res->nhc;
 struct net_device *dev = nhc->nhc_dev;
 struct fib_info *fi = res->fi;
 u32 mtu = 0;

 if (dev_net(dev)->ipv4.sysctl_ip_fwd_use_pmtu ||
     fi->fib_metrics->metrics[RTAX_LOCK - 1] & (1 << RTAX_MTU))
  mtu = fi->fib_mtu;

 if (likely(!mtu)) {
  struct fib_nh_exception *fnhe;

  fnhe = find_exception(nhc, daddr);
  if (fnhe && !time_after_eq(jiffies, fnhe->fnhe_expires))
   mtu = fnhe->fnhe_pmtu;
 }

 if (likely(!mtu))
  mtu = min(READ_ONCE(dev->mtu), IP_MAX_MTU);

 return mtu - lwtunnel_headroom(nhc->nhc_lwtstate, mtu);
}
