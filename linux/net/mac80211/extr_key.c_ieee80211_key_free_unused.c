
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_key {scalar_t__ local; scalar_t__ sdata; } ;


 int WARN_ON (int) ;
 int ieee80211_key_free_common (struct ieee80211_key*) ;

void ieee80211_key_free_unused(struct ieee80211_key *key)
{
 WARN_ON(key->sdata || key->local);
 ieee80211_key_free_common(key);
}
