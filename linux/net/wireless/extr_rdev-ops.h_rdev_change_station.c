
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct station_parameters {int dummy; } ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* change_station ) (int *,struct net_device*,int *,struct station_parameters*) ;} ;


 int stub1 (int *,struct net_device*,int *,struct station_parameters*) ;
 int trace_rdev_change_station (int *,struct net_device*,int *,struct station_parameters*) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int rdev_change_station(struct cfg80211_registered_device *rdev,
          struct net_device *dev, u8 *mac,
          struct station_parameters *params)
{
 int ret;
 trace_rdev_change_station(&rdev->wiphy, dev, mac, params);
 ret = rdev->ops->change_station(&rdev->wiphy, dev, mac, params);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
