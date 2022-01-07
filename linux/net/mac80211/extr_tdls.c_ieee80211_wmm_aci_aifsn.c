
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 ieee80211_wmm_aci_aifsn(int aifsn, bool acm, int aci)
{
 u8 ret;

 ret = aifsn & 0x0f;
 if (acm)
  ret |= 0x10;
 ret |= (aci << 5) & 0x60;
 return ret;
}
