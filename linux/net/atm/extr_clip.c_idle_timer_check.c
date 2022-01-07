
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_3__ {int lock; } ;


 int CLIP_CHECK_INTERVAL ;
 int HZ ;
 int __neigh_for_each_release (TYPE_1__*,int ) ;
 TYPE_1__ arp_tbl ;
 int idle_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int neigh_check_cb ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void idle_timer_check(struct timer_list *unused)
{
 write_lock(&arp_tbl.lock);
 __neigh_for_each_release(&arp_tbl, neigh_check_cb);
 mod_timer(&idle_timer, jiffies + CLIP_CHECK_INTERVAL * HZ);
 write_unlock(&arp_tbl.lock);
}
