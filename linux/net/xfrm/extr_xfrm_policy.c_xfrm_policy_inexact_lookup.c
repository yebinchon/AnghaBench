
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct xfrm_pol_inexact_bin {int dummy; } ;
struct TYPE_2__ {int xfrm_policy_lock; } ;
struct net {TYPE_1__ xfrm; } ;


 int lockdep_assert_held (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct xfrm_pol_inexact_bin* xfrm_policy_inexact_lookup_rcu (struct net*,int ,int ,int ,int ) ;

__attribute__((used)) static struct xfrm_pol_inexact_bin *
xfrm_policy_inexact_lookup(struct net *net, u8 type, u16 family,
      u8 dir, u32 if_id)
{
 struct xfrm_pol_inexact_bin *bin;

 lockdep_assert_held(&net->xfrm.xfrm_policy_lock);

 rcu_read_lock();
 bin = xfrm_policy_inexact_lookup_rcu(net, type, family, dir, if_id);
 rcu_read_unlock();

 return bin;
}
