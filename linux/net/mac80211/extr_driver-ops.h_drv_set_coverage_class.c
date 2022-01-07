
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_local {int hw; TYPE_1__* ops; } ;
typedef int s16 ;
struct TYPE_2__ {int (* set_coverage_class ) (int *,int ) ;} ;


 int EOPNOTSUPP ;
 int might_sleep () ;
 int stub1 (int *,int ) ;
 int trace_drv_return_int (struct ieee80211_local*,int) ;
 int trace_drv_set_coverage_class (struct ieee80211_local*,int ) ;

__attribute__((used)) static inline int drv_set_coverage_class(struct ieee80211_local *local,
      s16 value)
{
 int ret = 0;
 might_sleep();

 trace_drv_set_coverage_class(local, value);
 if (local->ops->set_coverage_class)
  local->ops->set_coverage_class(&local->hw, value);
 else
  ret = -EOPNOTSUPP;

 trace_drv_return_int(local, ret);
 return ret;
}
