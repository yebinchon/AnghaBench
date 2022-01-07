
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct fwdb_wmm_rule {int dummy; } ;
struct fwdb_wmm_ac {int ecw; int aifsn; } ;


 int IEEE80211_NUM_ACS ;
 scalar_t__ ecw2cw (int) ;

__attribute__((used)) static bool valid_wmm(struct fwdb_wmm_rule *rule)
{
 struct fwdb_wmm_ac *ac = (struct fwdb_wmm_ac *)rule;
 int i;

 for (i = 0; i < IEEE80211_NUM_ACS * 2; i++) {
  u16 cw_min = ecw2cw((ac[i].ecw & 0xf0) >> 4);
  u16 cw_max = ecw2cw(ac[i].ecw & 0x0f);
  u8 aifsn = ac[i].aifsn;

  if (cw_min >= cw_max)
   return 0;

  if (aifsn < 1)
   return 0;
 }

 return 1;
}
