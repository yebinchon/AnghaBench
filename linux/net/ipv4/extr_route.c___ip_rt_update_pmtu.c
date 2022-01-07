
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dst_entry {int dev; scalar_t__ expires; } ;
struct rtable {scalar_t__ rt_pmtu; struct dst_entry dst; } ;
struct flowi4 {int daddr; } ;
struct fib_result {int dummy; } ;
struct fib_nh_common {int dummy; } ;


 struct fib_nh_common* FIB_RES_NHC (struct fib_result) ;
 int dev_net (int ) ;
 scalar_t__ fib_lookup (int ,struct flowi4*,struct fib_result*,int ) ;
 scalar_t__ ip_mtu_locked (struct dst_entry*) ;
 scalar_t__ ip_rt_min_pmtu ;
 int ip_rt_mtu_expires ;
 scalar_t__ ipv4_mtu (struct dst_entry*) ;
 scalar_t__ jiffies ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;
 int update_or_create_fnhe (struct fib_nh_common*,int ,int ,scalar_t__,int,scalar_t__) ;

__attribute__((used)) static void __ip_rt_update_pmtu(struct rtable *rt, struct flowi4 *fl4, u32 mtu)
{
 struct dst_entry *dst = &rt->dst;
 u32 old_mtu = ipv4_mtu(dst);
 struct fib_result res;
 bool lock = 0;

 if (ip_mtu_locked(dst))
  return;

 if (old_mtu < mtu)
  return;

 if (mtu < ip_rt_min_pmtu) {
  lock = 1;
  mtu = min(old_mtu, ip_rt_min_pmtu);
 }

 if (rt->rt_pmtu == mtu && !lock &&
     time_before(jiffies, dst->expires - ip_rt_mtu_expires / 2))
  return;

 rcu_read_lock();
 if (fib_lookup(dev_net(dst->dev), fl4, &res, 0) == 0) {
  struct fib_nh_common *nhc = FIB_RES_NHC(res);

  update_or_create_fnhe(nhc, fl4->daddr, 0, mtu, lock,
          jiffies + ip_rt_mtu_expires);
 }
 rcu_read_unlock();
}
