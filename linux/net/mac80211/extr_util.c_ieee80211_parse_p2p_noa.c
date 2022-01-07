
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ieee80211_p2p_noa_desc {int count; int interval; int duration; int start_time; } ;
struct ieee80211_p2p_noa_attr {struct ieee80211_p2p_noa_desc* desc; } ;
struct ieee80211_noa_data {int* count; TYPE_1__* desc; } ;
struct TYPE_2__ {void* duration; void* interval; void* start; } ;


 int IEEE80211_P2P_NOA_DESC_MAX ;
 int ieee80211_extend_noa_desc (struct ieee80211_noa_data*,int ,int) ;
 int ieee80211_update_p2p_noa (struct ieee80211_noa_data*,int ) ;
 void* le32_to_cpu (int ) ;
 int memset (struct ieee80211_noa_data*,int ,int) ;

int ieee80211_parse_p2p_noa(const struct ieee80211_p2p_noa_attr *attr,
       struct ieee80211_noa_data *data, u32 tsf)
{
 int ret = 0;
 int i;

 memset(data, 0, sizeof(*data));

 for (i = 0; i < IEEE80211_P2P_NOA_DESC_MAX; i++) {
  const struct ieee80211_p2p_noa_desc *desc = &attr->desc[i];

  if (!desc->count || !desc->duration)
   continue;

  data->count[i] = desc->count;
  data->desc[i].start = le32_to_cpu(desc->start_time);
  data->desc[i].duration = le32_to_cpu(desc->duration);
  data->desc[i].interval = le32_to_cpu(desc->interval);

  if (data->count[i] > 1 &&
      data->desc[i].interval < data->desc[i].duration)
   continue;

  ieee80211_extend_noa_desc(data, tsf, i);
  ret++;
 }

 if (ret)
  ieee80211_update_p2p_noa(data, tsf);

 return ret;
}
