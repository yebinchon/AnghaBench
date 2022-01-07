
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_dfs_regions { ____Placeholder_nl80211_dfs_regions } nl80211_dfs_regions ;


 int NL80211_DFS_UNSET ;

__attribute__((used)) static enum nl80211_dfs_regions
reg_intersect_dfs_region(const enum nl80211_dfs_regions dfs_region1,
    const enum nl80211_dfs_regions dfs_region2)
{
 if (dfs_region1 != dfs_region2)
  return NL80211_DFS_UNSET;
 return dfs_region1;
}
