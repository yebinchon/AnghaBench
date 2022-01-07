
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_default_key ) (int *,struct net_device*,int ,int,int) ;} ;


 int stub1 (int *,struct net_device*,int ,int,int) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_set_default_key (int *,struct net_device*,int ,int,int) ;

__attribute__((used)) static inline int
rdev_set_default_key(struct cfg80211_registered_device *rdev,
       struct net_device *netdev, u8 key_index, bool unicast,
       bool multicast)
{
 int ret;
 trace_rdev_set_default_key(&rdev->wiphy, netdev, key_index,
       unicast, multicast);
 ret = rdev->ops->set_default_key(&rdev->wiphy, netdev, key_index,
       unicast, multicast);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
