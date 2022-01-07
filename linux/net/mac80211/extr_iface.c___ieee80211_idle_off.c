
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;
struct ieee80211_local {TYPE_2__ hw; } ;


 int IEEE80211_CONF_CHANGE_IDLE ;
 int IEEE80211_CONF_IDLE ;

__attribute__((used)) static u32 __ieee80211_idle_off(struct ieee80211_local *local)
{
 if (!(local->hw.conf.flags & IEEE80211_CONF_IDLE))
  return 0;

 local->hw.conf.flags &= ~IEEE80211_CONF_IDLE;
 return IEEE80211_CONF_CHANGE_IDLE;
}
