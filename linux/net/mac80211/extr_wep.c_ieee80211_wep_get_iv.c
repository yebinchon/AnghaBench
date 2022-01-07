
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_local {int wep_iv; } ;


 scalar_t__ ieee80211_wep_weak_iv (int,int) ;

__attribute__((used)) static void ieee80211_wep_get_iv(struct ieee80211_local *local,
     int keylen, int keyidx, u8 *iv)
{
 local->wep_iv++;
 if (ieee80211_wep_weak_iv(local->wep_iv, keylen))
  local->wep_iv += 0x0100;

 if (!iv)
  return;

 *iv++ = (local->wep_iv >> 16) & 0xff;
 *iv++ = (local->wep_iv >> 8) & 0xff;
 *iv++ = local->wep_iv & 0xff;
 *iv++ = keyidx << 6;
}
