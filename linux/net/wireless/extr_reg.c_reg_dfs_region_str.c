
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nl80211_dfs_regions { ____Placeholder_nl80211_dfs_regions } nl80211_dfs_regions ;







__attribute__((used)) static const char *reg_dfs_region_str(enum nl80211_dfs_regions dfs_region)
{
 switch (dfs_region) {
 case 128:
  return "unset";
 case 130:
  return "FCC";
 case 131:
  return "ETSI";
 case 129:
  return "JP";
 }
 return "Unknown";
}
