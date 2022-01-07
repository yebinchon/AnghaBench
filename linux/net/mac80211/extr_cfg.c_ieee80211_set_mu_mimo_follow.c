
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vif_params {scalar_t__ vht_mumimo_follow_addr; scalar_t__ vht_mumimo_groups; } ;
struct TYPE_6__ {scalar_t__* membership; scalar_t__* position; } ;
struct TYPE_7__ {TYPE_1__ mu_group; } ;
struct TYPE_10__ {int mu_mimo_owner; TYPE_2__ bss_conf; } ;
struct TYPE_8__ {int mu_follow_addr; } ;
struct TYPE_9__ {TYPE_3__ mntr; } ;
struct ieee80211_sub_if_data {TYPE_5__ vif; TYPE_4__ u; } ;
typedef int membership ;


 int BSS_CHANGED_MU_GROUPS ;
 int BUILD_BUG_ON (int) ;
 int WLAN_MEMBERSHIP_LEN ;
 int WLAN_USER_POSITION_LEN ;
 int ether_addr_copy (int ,scalar_t__) ;
 int ieee80211_bss_info_change_notify (struct ieee80211_sub_if_data*,int ) ;
 int is_valid_ether_addr (scalar_t__) ;
 int memcpy (scalar_t__*,scalar_t__,int) ;

__attribute__((used)) static void ieee80211_set_mu_mimo_follow(struct ieee80211_sub_if_data *sdata,
      struct vif_params *params)
{
 bool mu_mimo_groups = 0;
 bool mu_mimo_follow = 0;

 if (params->vht_mumimo_groups) {
  u64 membership;

  BUILD_BUG_ON(sizeof(membership) != WLAN_MEMBERSHIP_LEN);

  memcpy(sdata->vif.bss_conf.mu_group.membership,
         params->vht_mumimo_groups, WLAN_MEMBERSHIP_LEN);
  memcpy(sdata->vif.bss_conf.mu_group.position,
         params->vht_mumimo_groups + WLAN_MEMBERSHIP_LEN,
         WLAN_USER_POSITION_LEN);
  ieee80211_bss_info_change_notify(sdata, BSS_CHANGED_MU_GROUPS);

  memcpy(&membership, params->vht_mumimo_groups,
         WLAN_MEMBERSHIP_LEN);
  mu_mimo_groups = membership != 0;
 }

 if (params->vht_mumimo_follow_addr) {
  mu_mimo_follow =
   is_valid_ether_addr(params->vht_mumimo_follow_addr);
  ether_addr_copy(sdata->u.mntr.mu_follow_addr,
    params->vht_mumimo_follow_addr);
 }

 sdata->vif.mu_mimo_owner = mu_mimo_groups || mu_mimo_follow;
}
