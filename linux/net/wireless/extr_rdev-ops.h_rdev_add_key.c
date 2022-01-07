
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct key_params {int mode; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* add_key ) (int *,struct net_device*,int ,int,int const*,struct key_params*) ;} ;


 int stub1 (int *,struct net_device*,int ,int,int const*,struct key_params*) ;
 int trace_rdev_add_key (int *,struct net_device*,int ,int,int const*,int ) ;
 int trace_rdev_return_int (int *,int) ;

__attribute__((used)) static inline int rdev_add_key(struct cfg80211_registered_device *rdev,
          struct net_device *netdev, u8 key_index,
          bool pairwise, const u8 *mac_addr,
          struct key_params *params)
{
 int ret;
 trace_rdev_add_key(&rdev->wiphy, netdev, key_index, pairwise,
      mac_addr, params->mode);
 ret = rdev->ops->add_key(&rdev->wiphy, netdev, key_index, pairwise,
      mac_addr, params);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
