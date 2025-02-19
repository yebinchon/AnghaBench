
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dev; } ;
struct ieee80211_regdomain {scalar_t__ dfs_region; } ;
typedef enum nl80211_dfs_regions { ____Placeholder_nl80211_dfs_regions } nl80211_dfs_regions ;


 int dev_name (int *) ;
 struct ieee80211_regdomain* get_cfg80211_regdom () ;
 struct ieee80211_regdomain* get_wiphy_regdom (struct wiphy*) ;
 int pr_debug (char*,int ,int ,int ) ;
 int reg_dfs_region_str (scalar_t__) ;

enum nl80211_dfs_regions reg_get_dfs_region(struct wiphy *wiphy)
{
 const struct ieee80211_regdomain *regd = ((void*)0);
 const struct ieee80211_regdomain *wiphy_regd = ((void*)0);

 regd = get_cfg80211_regdom();
 if (!wiphy)
  goto out;

 wiphy_regd = get_wiphy_regdom(wiphy);
 if (!wiphy_regd)
  goto out;

 if (wiphy_regd->dfs_region == regd->dfs_region)
  goto out;

 pr_debug("%s: device specific dfs_region (%s) disagrees with cfg80211's central dfs_region (%s)\n",
   dev_name(&wiphy->dev),
   reg_dfs_region_str(wiphy_regd->dfs_region),
   reg_dfs_region_str(regd->dfs_region));

out:
 return regd->dfs_region;
}
