
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aid; int addr; } ;
struct sta_info {TYPE_1__ sta; int sdata; } ;


 int WLAN_STA_PS_DELIVER ;
 int WLAN_STA_PS_DRIVER ;
 int WLAN_STA_PS_STA ;
 int clear_sta_flag (struct sta_info*,int ) ;
 int ieee80211_sta_ps_deliver_wakeup (struct sta_info*) ;
 int ps_dbg (int ,char*,int ,int ) ;
 int set_sta_flag (struct sta_info*,int ) ;
 scalar_t__ test_sta_flag (struct sta_info*,int ) ;

__attribute__((used)) static void sta_ps_end(struct sta_info *sta)
{
 ps_dbg(sta->sdata, "STA %pM aid %d exits power save mode\n",
        sta->sta.addr, sta->sta.aid);

 if (test_sta_flag(sta, WLAN_STA_PS_DRIVER)) {






  clear_sta_flag(sta, WLAN_STA_PS_STA);
  ps_dbg(sta->sdata, "STA %pM aid %d driver-ps-blocked\n",
         sta->sta.addr, sta->sta.aid);
  return;
 }

 set_sta_flag(sta, WLAN_STA_PS_DELIVER);
 clear_sta_flag(sta, WLAN_STA_PS_STA);
 ieee80211_sta_ps_deliver_wakeup(sta);
}
