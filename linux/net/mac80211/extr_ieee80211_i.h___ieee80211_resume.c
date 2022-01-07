
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int scanning; } ;
struct ieee80211_hw {int wiphy; } ;


 int SCAN_COMPLETED ;
 int SCAN_HW_SCANNING ;
 int WARN (int,char*,int ) ;
 struct ieee80211_local* hw_to_local (struct ieee80211_hw*) ;
 int ieee80211_reconfig (struct ieee80211_local*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wiphy_name (int ) ;

__attribute__((used)) static inline int __ieee80211_resume(struct ieee80211_hw *hw)
{
 struct ieee80211_local *local = hw_to_local(hw);

 WARN(test_bit(SCAN_HW_SCANNING, &local->scanning) &&
      !test_bit(SCAN_COMPLETED, &local->scanning),
  "%s: resume with hardware scan still in progress\n",
  wiphy_name(hw->wiphy));

 return ieee80211_reconfig(hw_to_local(hw));
}
