
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
typedef int __be16 ;
struct TYPE_2__ {int (* tx_control_port ) (int *,struct net_device*,void const*,size_t,int const*,int ,int const) ;} ;


 int stub1 (int *,struct net_device*,void const*,size_t,int const*,int ,int const) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_tx_control_port (int *,struct net_device*,void const*,size_t,int const*,int ,int const) ;

__attribute__((used)) static inline int rdev_tx_control_port(struct cfg80211_registered_device *rdev,
           struct net_device *dev,
           const void *buf, size_t len,
           const u8 *dest, __be16 proto,
           const bool noencrypt)
{
 int ret;
 trace_rdev_tx_control_port(&rdev->wiphy, dev, buf, len,
       dest, proto, noencrypt);
 ret = rdev->ops->tx_control_port(&rdev->wiphy, dev, buf, len,
      dest, proto, noencrypt);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
