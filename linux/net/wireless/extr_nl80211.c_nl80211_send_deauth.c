
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct cfg80211_registered_device {int dummy; } ;
typedef int gfp_t ;


 int NL80211_CMD_DEAUTHENTICATE ;
 int nl80211_send_mlme_event (struct cfg80211_registered_device*,struct net_device*,int const*,size_t,int ,int ,int,int *,int ) ;

void nl80211_send_deauth(struct cfg80211_registered_device *rdev,
    struct net_device *netdev, const u8 *buf,
    size_t len, gfp_t gfp)
{
 nl80211_send_mlme_event(rdev, netdev, buf, len,
    NL80211_CMD_DEAUTHENTICATE, gfp, -1, ((void*)0), 0);
}
