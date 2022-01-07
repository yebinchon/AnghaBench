
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_iface_combination {int dummy; } ;



__attribute__((used)) static void
cfg80211_iter_sum_ifcombs(const struct ieee80211_iface_combination *c,
     void *data)
{
 int *num = data;
 (*num)++;
}
