
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int n_cipher_schemes; struct ieee80211_cipher_scheme* cipher_schemes; } ;
struct ieee80211_local {TYPE_1__ hw; } ;
struct ieee80211_cipher_scheme {scalar_t__ cipher; int iftype; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int BIT (int) ;

const struct ieee80211_cipher_scheme *
ieee80211_cs_get(struct ieee80211_local *local, u32 cipher,
   enum nl80211_iftype iftype)
{
 const struct ieee80211_cipher_scheme *l = local->hw.cipher_schemes;
 int n = local->hw.n_cipher_schemes;
 int i;
 const struct ieee80211_cipher_scheme *cs = ((void*)0);

 for (i = 0; i < n; i++) {
  if (l[i].cipher == cipher) {
   cs = &l[i];
   break;
  }
 }

 if (!cs || !(cs->iftype & BIT(iftype)))
  return ((void*)0);

 return cs;
}
