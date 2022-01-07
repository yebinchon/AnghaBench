
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int hash_node; } ;
struct ieee80211_local {int sta_hash; } ;


 int rhltable_insert (int *,int *,int ) ;
 int sta_rht_params ;

__attribute__((used)) static int sta_info_hash_add(struct ieee80211_local *local,
        struct sta_info *sta)
{
 return rhltable_insert(&local->sta_hash, &sta->hash_node,
          sta_rht_params);
}
