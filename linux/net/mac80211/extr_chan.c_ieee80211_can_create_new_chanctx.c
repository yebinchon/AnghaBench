
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int chanctx_mtx; } ;


 scalar_t__ ieee80211_max_num_channels (struct ieee80211_local*) ;
 scalar_t__ ieee80211_num_chanctx (struct ieee80211_local*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static bool ieee80211_can_create_new_chanctx(struct ieee80211_local *local)
{
 lockdep_assert_held(&local->chanctx_mtx);
 return ieee80211_num_chanctx(local) < ieee80211_max_num_channels(local);
}
