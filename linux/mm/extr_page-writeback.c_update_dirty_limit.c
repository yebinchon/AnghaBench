
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_domain {unsigned long dirty_limit; } ;
struct dirty_throttle_control {unsigned long thresh; int dirty; } ;


 struct wb_domain* dtc_dom (struct dirty_throttle_control*) ;
 unsigned long max (unsigned long,int ) ;

__attribute__((used)) static void update_dirty_limit(struct dirty_throttle_control *dtc)
{
 struct wb_domain *dom = dtc_dom(dtc);
 unsigned long thresh = dtc->thresh;
 unsigned long limit = dom->dirty_limit;




 if (limit < thresh) {
  limit = thresh;
  goto update;
 }






 thresh = max(thresh, dtc->dirty);
 if (limit > thresh) {
  limit -= (limit - thresh) >> 5;
  goto update;
 }
 return;
update:
 dom->dirty_limit = limit;
}
