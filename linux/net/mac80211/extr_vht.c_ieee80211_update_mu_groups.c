
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int position; int membership; } ;
struct ieee80211_bss_conf {TYPE_1__ mu_group; } ;
struct ieee80211_vif {int mu_mimo_owner; struct ieee80211_bss_conf bss_conf; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int WLAN_MEMBERSHIP_LEN ;
 int WLAN_USER_POSITION_LEN ;
 int memcpy (int ,int const*,int ) ;

void ieee80211_update_mu_groups(struct ieee80211_vif *vif,
    const u8 *membership, const u8 *position)
{
 struct ieee80211_bss_conf *bss_conf = &vif->bss_conf;

 if (WARN_ON_ONCE(!vif->mu_mimo_owner))
  return;

 memcpy(bss_conf->mu_group.membership, membership, WLAN_MEMBERSHIP_LEN);
 memcpy(bss_conf->mu_group.position, position, WLAN_USER_POSITION_LEN);
}
