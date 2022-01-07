
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rhlist_head {int dummy; } ;
struct ieee80211_local {int sta_hash; } ;


 struct rhlist_head* rhltable_lookup (int *,int const*,int ) ;
 int sta_rht_params ;

struct rhlist_head *sta_info_hash_lookup(struct ieee80211_local *local,
      const u8 *addr)
{
 return rhltable_lookup(&local->sta_hash, addr, sta_rht_params);
}
