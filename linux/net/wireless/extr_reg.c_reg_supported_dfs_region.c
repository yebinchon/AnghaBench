
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_dfs_regions { ____Placeholder_nl80211_dfs_regions } nl80211_dfs_regions ;






 int pr_debug (char*,int) ;

bool reg_supported_dfs_region(enum nl80211_dfs_regions dfs_region)
{
 switch (dfs_region) {
 case 128:
 case 130:
 case 131:
 case 129:
  return 1;
 default:
  pr_debug("Ignoring unknown DFS master region: %d\n", dfs_region);
  return 0;
 }
}
