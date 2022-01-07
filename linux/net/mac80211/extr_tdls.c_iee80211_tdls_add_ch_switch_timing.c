
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct ieee80211_ch_switch_timing {void* switch_timeout; void* switch_time; } ;


 int WLAN_EID_CHAN_SWITCH_TIMING ;
 void* cpu_to_le16 (int ) ;

__attribute__((used)) static void
iee80211_tdls_add_ch_switch_timing(u8 *buf, u16 switch_time, u16 switch_timeout)
{
 struct ieee80211_ch_switch_timing *ch_sw;

 *buf++ = WLAN_EID_CHAN_SWITCH_TIMING;
 *buf++ = sizeof(struct ieee80211_ch_switch_timing);

 ch_sw = (void *)buf;
 ch_sw->switch_time = cpu_to_le16(switch_time);
 ch_sw->switch_timeout = cpu_to_le16(switch_timeout);
}
