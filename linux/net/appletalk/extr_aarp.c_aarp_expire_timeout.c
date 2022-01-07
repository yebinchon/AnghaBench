
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;


 int AARP_HASH_SIZE ;
 int __aarp_expire_timer (int *) ;
 int __aarp_kick (int *) ;
 int aarp_lock ;
 int aarp_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int * proxies ;
 int * resolved ;
 scalar_t__ sysctl_aarp_expiry_time ;
 scalar_t__ sysctl_aarp_tick_time ;
 int * unresolved ;
 scalar_t__ unresolved_count ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void aarp_expire_timeout(struct timer_list *unused)
{
 int ct;

 write_lock_bh(&aarp_lock);

 for (ct = 0; ct < AARP_HASH_SIZE; ct++) {
  __aarp_expire_timer(&resolved[ct]);
  __aarp_kick(&unresolved[ct]);
  __aarp_expire_timer(&unresolved[ct]);
  __aarp_expire_timer(&proxies[ct]);
 }

 write_unlock_bh(&aarp_lock);
 mod_timer(&aarp_timer, jiffies +
          (unresolved_count ? sysctl_aarp_tick_time :
    sysctl_aarp_expiry_time));
}
