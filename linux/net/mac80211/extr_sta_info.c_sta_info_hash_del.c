
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int hash_node; } ;
struct ieee80211_local {int sta_hash; } ;


 int rhltable_remove (int *,int *,int ) ;
 int sta_rht_params ;

__attribute__((used)) static int sta_info_hash_del(struct ieee80211_local *local,
        struct sta_info *sta)
{
 return rhltable_remove(&local->sta_hash, &sta->hash_node,
          sta_rht_params);
}
