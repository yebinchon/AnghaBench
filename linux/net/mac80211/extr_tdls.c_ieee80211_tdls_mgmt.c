
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wiphy {int flags; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int associated; } ;
struct TYPE_6__ {TYPE_2__ mgd; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ieee80211_sub_if_data {int local; TYPE_3__ u; TYPE_1__ vif; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int EOPNOTSUPP ;
 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int WIPHY_FLAG_SUPPORTS_TDLS ;






 int drv_mgd_protect_tdls_discover (int ,struct ieee80211_sub_if_data*) ;
 int ieee80211_tdls_mgmt_setup (struct wiphy*,struct net_device*,int const*,int ,int ,int ,int ,int,int const*,size_t) ;
 int ieee80211_tdls_mgmt_teardown (struct wiphy*,struct net_device*,int const*,int ,int ,int ,int ,int,int const*,size_t) ;
 int ieee80211_tdls_prep_mgmt_packet (struct wiphy*,struct net_device*,int const*,int ,int ,int ,int ,int,int const*,size_t,int ,int *) ;
 int tdls_dbg (struct ieee80211_sub_if_data*,char*,int ,int const*,int) ;

int ieee80211_tdls_mgmt(struct wiphy *wiphy, struct net_device *dev,
   const u8 *peer, u8 action_code, u8 dialog_token,
   u16 status_code, u32 peer_capability,
   bool initiator, const u8 *extra_ies,
   size_t extra_ies_len)
{
 struct ieee80211_sub_if_data *sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 int ret;

 if (!(wiphy->flags & WIPHY_FLAG_SUPPORTS_TDLS))
  return -ENOTSUPP;


 if (sdata->vif.type != NL80211_IFTYPE_STATION ||
     !sdata->u.mgd.associated)
  return -EINVAL;

 switch (action_code) {
 case 130:
 case 129:
  ret = ieee80211_tdls_mgmt_setup(wiphy, dev, peer, action_code,
      dialog_token, status_code,
      peer_capability, initiator,
      extra_ies, extra_ies_len);
  break;
 case 128:
  ret = ieee80211_tdls_mgmt_teardown(wiphy, dev, peer,
         action_code, dialog_token,
         status_code,
         peer_capability, initiator,
         extra_ies, extra_ies_len);
  break;
 case 132:





  drv_mgd_protect_tdls_discover(sdata->local, sdata);

 case 131:
 case 133:

  ret = ieee80211_tdls_prep_mgmt_packet(wiphy, dev, peer,
            action_code,
            dialog_token,
            status_code,
            peer_capability,
            initiator, extra_ies,
            extra_ies_len, 0, ((void*)0));
  break;
 default:
  ret = -EOPNOTSUPP;
  break;
 }

 tdls_dbg(sdata, "TDLS mgmt action %d peer %pM status %d\n",
   action_code, peer, ret);
 return ret;
}
