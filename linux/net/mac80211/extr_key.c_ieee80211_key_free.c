
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct ieee80211_key {TYPE_1__ conf; int sta; scalar_t__ sdata; } ;


 int IEEE80211_KEY_FLAG_PAIRWISE ;
 int ieee80211_key_destroy (struct ieee80211_key*,int) ;
 int ieee80211_key_replace (scalar_t__,int ,int,struct ieee80211_key*,int *) ;

void ieee80211_key_free(struct ieee80211_key *key, bool delay_tailroom)
{
 if (!key)
  return;




 if (key->sdata)
  ieee80211_key_replace(key->sdata, key->sta,
    key->conf.flags & IEEE80211_KEY_FLAG_PAIRWISE,
    key, ((void*)0));
 ieee80211_key_destroy(key, delay_tailroom);
}
