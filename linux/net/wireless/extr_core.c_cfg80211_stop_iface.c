
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int event_lock; int event_list; } ;
struct wiphy {int dummy; } ;
struct cfg80211_registered_device {int event_work; } ;
struct cfg80211_event {int list; int type; } ;
typedef int gfp_t ;


 int EVENT_STOPPED ;
 int cfg80211_wq ;
 struct cfg80211_event* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_cfg80211_stop_iface (struct wiphy*,struct wireless_dev*) ;
 struct cfg80211_registered_device* wiphy_to_rdev (struct wiphy*) ;

void cfg80211_stop_iface(struct wiphy *wiphy, struct wireless_dev *wdev,
    gfp_t gfp)
{
 struct cfg80211_registered_device *rdev = wiphy_to_rdev(wiphy);
 struct cfg80211_event *ev;
 unsigned long flags;

 trace_cfg80211_stop_iface(wiphy, wdev);

 ev = kzalloc(sizeof(*ev), gfp);
 if (!ev)
  return;

 ev->type = EVENT_STOPPED;

 spin_lock_irqsave(&wdev->event_lock, flags);
 list_add_tail(&ev->list, &wdev->event_list);
 spin_unlock_irqrestore(&wdev->event_lock, flags);
 queue_work(cfg80211_wq, &rdev->event_work);
}
