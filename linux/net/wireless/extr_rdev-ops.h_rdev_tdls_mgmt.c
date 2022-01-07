
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* tdls_mgmt ) (int *,struct net_device*,int *,int ,int ,int ,int ,int,int const*,size_t) ;} ;


 int stub1 (int *,struct net_device*,int *,int ,int ,int ,int ,int,int const*,size_t) ;
 int trace_rdev_return_int (int *,int) ;
 int trace_rdev_tdls_mgmt (int *,struct net_device*,int *,int ,int ,int ,int ,int,int const*,size_t) ;

__attribute__((used)) static inline int rdev_tdls_mgmt(struct cfg80211_registered_device *rdev,
     struct net_device *dev, u8 *peer,
     u8 action_code, u8 dialog_token,
     u16 status_code, u32 peer_capability,
     bool initiator, const u8 *buf, size_t len)
{
 int ret;
 trace_rdev_tdls_mgmt(&rdev->wiphy, dev, peer, action_code,
        dialog_token, status_code, peer_capability,
        initiator, buf, len);
 ret = rdev->ops->tdls_mgmt(&rdev->wiphy, dev, peer, action_code,
       dialog_token, status_code, peer_capability,
       initiator, buf, len);
 trace_rdev_return_int(&rdev->wiphy, ret);
 return ret;
}
