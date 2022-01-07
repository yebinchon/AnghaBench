
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_scan_info {int dummy; } ;
struct cfg80211_scan_request {int notified; int wiphy; struct cfg80211_scan_info info; } ;
struct TYPE_2__ {int scan_done_wk; struct cfg80211_scan_request* scan_req; } ;


 int WARN_ON (int) ;
 int cfg80211_wq ;
 int queue_work (int ,int *) ;
 int trace_cfg80211_scan_done (struct cfg80211_scan_request*,struct cfg80211_scan_info*) ;
 TYPE_1__* wiphy_to_rdev (int ) ;

void cfg80211_scan_done(struct cfg80211_scan_request *request,
   struct cfg80211_scan_info *info)
{
 trace_cfg80211_scan_done(request, info);
 WARN_ON(request != wiphy_to_rdev(request->wiphy)->scan_req);

 request->info = *info;
 request->notified = 1;
 queue_work(cfg80211_wq, &wiphy_to_rdev(request->wiphy)->scan_done_wk);
}
