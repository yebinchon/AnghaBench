
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet6_dev {int lock; int mc_dad_timer; int mc_ifc_timer; scalar_t__ mc_ifc_count; int * mc_tomb; int mc_gq_timer; scalar_t__ mc_gq_running; int mc_lock; } ;


 int ipv6_mc_reset (struct inet6_dev*) ;
 int mld_dad_timer_expire ;
 int mld_gq_timer_expire ;
 int mld_ifc_timer_expire ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void ipv6_mc_init_dev(struct inet6_dev *idev)
{
 write_lock_bh(&idev->lock);
 spin_lock_init(&idev->mc_lock);
 idev->mc_gq_running = 0;
 timer_setup(&idev->mc_gq_timer, mld_gq_timer_expire, 0);
 idev->mc_tomb = ((void*)0);
 idev->mc_ifc_count = 0;
 timer_setup(&idev->mc_ifc_timer, mld_ifc_timer_expire, 0);
 timer_setup(&idev->mc_dad_timer, mld_dad_timer_expire, 0);
 ipv6_mc_reset(idev);
 write_unlock_bh(&idev->lock);
}
