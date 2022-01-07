
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wireless_dev {int event_lock; int event_list; int wiphy; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_registered_device {int event_work; } ;
struct TYPE_2__ {size_t ie_len; int locally_generated; int reason; int * ie; } ;
struct cfg80211_event {int list; TYPE_1__ dc; int type; } ;
typedef int gfp_t ;


 int EVENT_DISCONNECTED ;
 int cfg80211_wq ;
 struct cfg80211_event* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (void*,int const*,size_t) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cfg80211_registered_device* wiphy_to_rdev (int ) ;

void cfg80211_disconnected(struct net_device *dev, u16 reason,
      const u8 *ie, size_t ie_len,
      bool locally_generated, gfp_t gfp)
{
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wdev->wiphy);
 struct cfg80211_event *ev;
 unsigned long flags;

 ev = kzalloc(sizeof(*ev) + ie_len, gfp);
 if (!ev)
  return;

 ev->type = EVENT_DISCONNECTED;
 ev->dc.ie = ((u8 *)ev) + sizeof(*ev);
 ev->dc.ie_len = ie_len;
 memcpy((void *)ev->dc.ie, ie, ie_len);
 ev->dc.reason = reason;
 ev->dc.locally_generated = locally_generated;

 spin_lock_irqsave(&wdev->event_lock, flags);
 list_add_tail(&ev->list, &wdev->event_list);
 spin_unlock_irqrestore(&wdev->event_lock, flags);
 queue_work(cfg80211_wq, &rdev->event_work);
}
