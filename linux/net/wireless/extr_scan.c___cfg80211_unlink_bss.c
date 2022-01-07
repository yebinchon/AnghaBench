
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_registered_device {scalar_t__ bss_entries; int bss_list; int bss_tree; int bss_lock; } ;
struct TYPE_2__ {int nontrans_list; int hidden_beacon_bss; } ;
struct cfg80211_internal_bss {int rbn; TYPE_1__ pub; int list; int hidden_list; } ;


 int WARN_ONCE (int,char*,scalar_t__,int) ;
 int bss_ref_put (struct cfg80211_registered_device*,struct cfg80211_internal_bss*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static bool __cfg80211_unlink_bss(struct cfg80211_registered_device *rdev,
      struct cfg80211_internal_bss *bss)
{
 lockdep_assert_held(&rdev->bss_lock);

 if (!list_empty(&bss->hidden_list)) {




  if (!bss->pub.hidden_beacon_bss)
   return 0;




  list_del_init(&bss->hidden_list);
 }

 list_del_init(&bss->list);
 list_del_init(&bss->pub.nontrans_list);
 rb_erase(&bss->rbn, &rdev->bss_tree);
 rdev->bss_entries--;
 WARN_ONCE((rdev->bss_entries == 0) ^ list_empty(&rdev->bss_list),
    "rdev bss entries[%d]/list[empty:%d] corruption\n",
    rdev->bss_entries, list_empty(&rdev->bss_list));
 bss_ref_put(rdev, bss);
 return 1;
}
