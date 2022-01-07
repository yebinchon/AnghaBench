
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ieee80211_noa_data {TYPE_1__* desc; int * count; } ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ duration; } ;


 int IEEE80211_P2P_NOA_DESC_MAX ;
 scalar_t__ ieee80211_extend_noa_desc (struct ieee80211_noa_data*,scalar_t__,int) ;

__attribute__((used)) static bool
ieee80211_extend_absent_time(struct ieee80211_noa_data *data, u32 tsf,
        s32 *offset)
{
 bool ret = 0;
 int i;

 for (i = 0; i < IEEE80211_P2P_NOA_DESC_MAX; i++) {
  s32 cur;

  if (!data->count[i])
   continue;

  if (ieee80211_extend_noa_desc(data, tsf + *offset, i))
   ret = 1;

  cur = data->desc[i].start - tsf;
  if (cur > *offset)
   continue;

  cur = data->desc[i].start + data->desc[i].duration - tsf;
  if (cur > *offset)
   *offset = cur;
 }

 return ret;
}
