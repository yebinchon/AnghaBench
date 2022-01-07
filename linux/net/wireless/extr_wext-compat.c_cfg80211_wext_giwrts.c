
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wireless_dev {TYPE_1__* wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int disabled; int fixed; int value; } ;
struct TYPE_2__ {int rts_threshold; } ;



int cfg80211_wext_giwrts(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_param *rts, char *extra)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;

 rts->value = wdev->wiphy->rts_threshold;
 rts->disabled = rts->value == (u32) -1;
 rts->fixed = 1;

 return 0;
}
