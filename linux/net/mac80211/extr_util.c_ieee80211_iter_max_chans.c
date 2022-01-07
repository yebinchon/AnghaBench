
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_iface_combination {int num_different_channels; } ;


 int max (int ,int ) ;

__attribute__((used)) static void
ieee80211_iter_max_chans(const struct ieee80211_iface_combination *c,
    void *data)
{
 u32 *max_num_different_channels = data;

 *max_num_different_channels = max(*max_num_different_channels,
       c->num_different_channels);
}
