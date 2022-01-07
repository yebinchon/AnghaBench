
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int position; int membership; } ;
struct ieee80211_bss_conf {TYPE_2__ mu_group; } ;
struct TYPE_7__ {int mu_mimo_owner; struct ieee80211_bss_conf bss_conf; } ;
struct ieee80211_sub_if_data {TYPE_1__ vif; } ;
struct TYPE_9__ {int position; int membership; } ;
struct TYPE_10__ {TYPE_3__ vht_group_notif; } ;
struct TYPE_11__ {TYPE_4__ u; } ;
struct TYPE_12__ {TYPE_5__ action; } ;
struct ieee80211_mgmt {TYPE_6__ u; } ;


 int BSS_CHANGED_MU_GROUPS ;
 int WLAN_MEMBERSHIP_LEN ;
 int WLAN_USER_POSITION_LEN ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;
 int memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;

void ieee80211_process_mu_groups(struct ieee80211_sub_if_data *sdata,
     struct ieee80211_mgmt *mgmt)
{
 struct ieee80211_bss_conf *bss_conf = &sdata->vif.bss_conf;

 if (!sdata->vif.mu_mimo_owner)
  return;

 if (!memcmp(mgmt->u.action.u.vht_group_notif.position,
      bss_conf->mu_group.position, WLAN_USER_POSITION_LEN) &&
     !memcmp(mgmt->u.action.u.vht_group_notif.membership,
      bss_conf->mu_group.membership, WLAN_MEMBERSHIP_LEN))
  return;

 memcpy(bss_conf->mu_group.membership,
        mgmt->u.action.u.vht_group_notif.membership,
        WLAN_MEMBERSHIP_LEN);
 memcpy(bss_conf->mu_group.position,
        mgmt->u.action.u.vht_group_notif.position,
        WLAN_USER_POSITION_LEN);

 ieee80211_bss_info_change_notify(sdata, BSS_CHANGED_MU_GROUPS);
}
