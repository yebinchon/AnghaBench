
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int dummy; } ;
struct cfg80211_registered_device {int wiphy; TYPE_1__* ops; } ;
struct cfg80211_pmsr_request {int cookie; } ;
struct TYPE_2__ {int (* abort_pmsr ) (int *,struct wireless_dev*,struct cfg80211_pmsr_request*) ;} ;


 int stub1 (int *,struct wireless_dev*,struct cfg80211_pmsr_request*) ;
 int trace_rdev_abort_pmsr (int *,struct wireless_dev*,int ) ;
 int trace_rdev_return_void (int *) ;

__attribute__((used)) static inline void
rdev_abort_pmsr(struct cfg80211_registered_device *rdev,
  struct wireless_dev *wdev,
  struct cfg80211_pmsr_request *request)
{
 trace_rdev_abort_pmsr(&rdev->wiphy, wdev, request->cookie);
 if (rdev->ops->abort_pmsr)
  rdev->ops->abort_pmsr(&rdev->wiphy, wdev, request);
 trace_rdev_return_void(&rdev->wiphy);
}
