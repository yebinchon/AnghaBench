
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_domain {unsigned long dirty_limit_tstamp; int lock; } ;
struct dirty_throttle_control {int dummy; } ;


 scalar_t__ BANDWIDTH_INTERVAL ;
 struct wb_domain* dtc_dom (struct dirty_throttle_control*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_after_eq (unsigned long,scalar_t__) ;
 scalar_t__ time_before (unsigned long,scalar_t__) ;
 int update_dirty_limit (struct dirty_throttle_control*) ;

__attribute__((used)) static void domain_update_bandwidth(struct dirty_throttle_control *dtc,
        unsigned long now)
{
 struct wb_domain *dom = dtc_dom(dtc);




 if (time_before(now, dom->dirty_limit_tstamp + BANDWIDTH_INTERVAL))
  return;

 spin_lock(&dom->lock);
 if (time_after_eq(now, dom->dirty_limit_tstamp + BANDWIDTH_INTERVAL)) {
  update_dirty_limit(dtc);
  dom->dirty_limit_tstamp = now;
 }
 spin_unlock(&dom->lock);
}
