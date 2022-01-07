
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_noa_data {int dummy; } ;
typedef int s32 ;


 int ieee80211_extend_absent_time (struct ieee80211_noa_data*,int ,int *) ;

__attribute__((used)) static u32
ieee80211_get_noa_absent_time(struct ieee80211_noa_data *data, u32 tsf)
{
 s32 offset = 0;
 int tries = 0;




 int max_tries = 5;

 ieee80211_extend_absent_time(data, tsf, &offset);
 do {
  if (!ieee80211_extend_absent_time(data, tsf, &offset))
   break;

  tries++;
 } while (tries < max_tries);

 return offset;
}
