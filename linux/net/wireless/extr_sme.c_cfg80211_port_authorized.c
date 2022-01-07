
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wireless_dev {int event_lock; int event_list; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int event_work; } ;
struct TYPE_2__ {int bssid; } ;
struct cfg80211_event {int list; TYPE_1__ pa; int type; } ;
typedef int gfp_t ;


 int ETH_ALEN ;
 int EVENT_PORT_AUTHORIZED ;
 scalar_t__ WARN_ON (int) ;
 int cfg80211_wq ;
 struct cfg80211_event* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int ,int const*,int ) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

void cfg80211_port_authorized(struct net_device *dev, const u8 *bssid,
         gfp_t gfp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct cfg80211_event *ev;
 unsigned long flags;

 if (WARN_ON(!bssid))
  return;

 ev = kzalloc(sizeof(*ev), gfp);
 if (!ev)
  return;

 ev->type = EVENT_PORT_AUTHORIZED;
 memcpy(ev->pa.bssid, bssid, ETH_ALEN);





 spin_lock_irqsave(&wdev->event_lock, flags);
 list_add_tail(&ev->list, &wdev->event_list);
 spin_unlock_irqrestore(&wdev->event_lock, flags);
 queue_work(cfg80211_wq, &rdev->event_work);
}
