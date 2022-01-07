
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static inline int ieee80211_crypto_cs_pn_compare(u8 *pn1, u8 *pn2, int len)
{
 int i;


 for (i = len - 1; i >= 0; i--) {
  if (pn1[i] < pn2[i])
   return -1;
  else if (pn1[i] > pn2[i])
   return 1;
 }

 return 0;
}
