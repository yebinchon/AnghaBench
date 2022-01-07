
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wiphy {int features; } ;
struct TYPE_7__ {int beacon; } ;
struct TYPE_8__ {TYPE_3__ ap; } ;
struct ieee80211_sub_if_data {TYPE_4__ u; TYPE_2__* local; int vif; } ;
struct cfg80211_scan_request {int flags; int wdev; } ;
struct TYPE_6__ {TYPE_1__* ops; } ;
struct TYPE_5__ {int hw_scan; } ;


 int EOPNOTSUPP ;
 struct ieee80211_sub_if_data* IEEE80211_WDEV_TO_SUB_IF (int ) ;
 int NL80211_FEATURE_AP_SCAN ;
 int NL80211_SCAN_FLAG_AP ;
 int ieee80211_request_scan (struct ieee80211_sub_if_data*,struct cfg80211_scan_request*) ;
 int ieee80211_vif_type_p2p (int *) ;

__attribute__((used)) static int ieee80211_scan(struct wiphy *wiphy,
     struct cfg80211_scan_request *req)
{
 struct ieee80211_sub_if_data *sdata;

 sdata = IEEE80211_WDEV_TO_SUB_IF(req->wdev);

 switch (ieee80211_vif_type_p2p(&sdata->vif)) {
 case 128:
 case 135:
 case 133:
 case 131:
 case 130:
  break;
 case 129:
  if (sdata->local->ops->hw_scan)
   break;






 case 134:







  if (sdata->u.ap.beacon &&
      (!(wiphy->features & NL80211_FEATURE_AP_SCAN) ||
       !(req->flags & NL80211_SCAN_FLAG_AP)))
   return -EOPNOTSUPP;
  break;
 case 132:
 default:
  return -EOPNOTSUPP;
 }

 return ieee80211_request_scan(sdata, req);
}
