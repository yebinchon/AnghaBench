
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int wep_iv; } ;


 int IEEE80211_WEP_IV_LEN ;
 int get_random_bytes (int *,int ) ;

int ieee80211_wep_init(struct ieee80211_local *local)
{

 get_random_bytes(&local->wep_iv, IEEE80211_WEP_IV_LEN);

 return 0;
}
