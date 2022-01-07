
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ieee80211_noa_data {int* count; TYPE_1__* desc; } ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {int interval; scalar_t__ start; scalar_t__ duration; } ;


 int DIV_ROUND_UP (scalar_t__,int) ;

__attribute__((used)) static bool
ieee80211_extend_noa_desc(struct ieee80211_noa_data *data, u32 tsf, int i)
{
 s32 end = data->desc[i].start + data->desc[i].duration - (tsf + 1);
 int skip;

 if (end > 0)
  return 0;


 if (data->count[i] == 1)
  return 0;

 if (data->desc[i].interval == 0)
  return 0;


 skip = DIV_ROUND_UP(-end, data->desc[i].interval);
 if (data->count[i] < 255) {
  if (data->count[i] <= skip) {
   data->count[i] = 0;
   return 0;
  }

  data->count[i] -= skip;
 }

 data->desc[i].start += skip * data->desc[i].interval;

 return 1;
}
