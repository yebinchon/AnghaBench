
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sub_if_data {int dummy; } ;


 int __sta_info_flush (struct ieee80211_sub_if_data*,int) ;

__attribute__((used)) static inline int sta_info_flush(struct ieee80211_sub_if_data *sdata)
{
 return __sta_info_flush(sdata, 0);
}
