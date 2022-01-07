
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline bool ieee80211_wep_weak_iv(u32 iv, int keylen)
{





 if ((iv & 0xff00) == 0xff00) {
  u8 B = (iv >> 16) & 0xff;
  if (B >= 3 && B < 3 + keylen)
   return 1;
 }
 return 0;
}
