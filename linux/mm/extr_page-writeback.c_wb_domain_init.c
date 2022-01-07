
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_domain {int completions; int dirty_limit_tstamp; int period_timer; int lock; } ;
typedef int gfp_t ;


 int TIMER_DEFERRABLE ;
 int fprop_global_init (int *,int ) ;
 int jiffies ;
 int memset (struct wb_domain*,int ,int) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int writeout_period ;

int wb_domain_init(struct wb_domain *dom, gfp_t gfp)
{
 memset(dom, 0, sizeof(*dom));

 spin_lock_init(&dom->lock);

 timer_setup(&dom->period_timer, writeout_period, TIMER_DEFERRABLE);

 dom->dirty_limit_tstamp = jiffies;

 return fprop_global_init(&dom->completions, gfp);
}
