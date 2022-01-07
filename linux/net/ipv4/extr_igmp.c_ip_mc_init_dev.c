
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_device {int mc_tomb_lock; int mr_ifc_timer; int mr_gq_timer; } ;


 int ASSERT_RTNL () ;
 int igmp_gq_timer_expire ;
 int igmp_ifc_timer_expire ;
 int ip_mc_reset (struct in_device*) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

void ip_mc_init_dev(struct in_device *in_dev)
{
 ASSERT_RTNL();





 ip_mc_reset(in_dev);

 spin_lock_init(&in_dev->mc_tomb_lock);
}
