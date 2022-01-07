
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct station_info {int filled; int expected_throughput; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ autoneg; scalar_t__ duplex; int speed; } ;
struct ethtool_link_ksettings {TYPE_1__ base; } ;
struct batadv_hardif_neigh_node {int addr; struct batadv_hard_iface* if_incoming; } ;
struct TYPE_6__ {int flags; int throughput_override; } ;
struct batadv_hard_iface {TYPE_2__ bat_v; TYPE_3__* net_dev; int soft_iface; } ;
typedef int link_settings ;
struct TYPE_7__ {int name; } ;


 scalar_t__ AUTONEG_ENABLE ;
 int BATADV_FULL_DUPLEX ;
 int BATADV_THROUGHPUT_DEFAULT_VALUE ;
 int BATADV_WARNING_DEFAULT ;
 int BIT (int ) ;
 scalar_t__ DUPLEX_FULL ;
 int ENOENT ;
 int NL80211_STA_INFO_EXPECTED_THROUGHPUT ;
 int SPEED_UNKNOWN ;
 int __ethtool_get_link_ksettings (TYPE_3__*,struct ethtool_link_ksettings*) ;
 int atomic_read (int *) ;
 struct net_device* batadv_get_real_netdev (TYPE_3__*) ;
 int batadv_info (int ,char*,int ,int,int) ;
 int batadv_is_cfg80211_hardif (struct batadv_hard_iface*) ;
 scalar_t__ batadv_is_wifi_hardif (struct batadv_hard_iface*) ;
 int cfg80211_get_station (struct net_device*,int ,struct station_info*) ;
 int cfg80211_sinfo_release_content (struct station_info*) ;
 int dev_put (struct net_device*) ;
 int memset (struct ethtool_link_ksettings*,int ,int) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static u32 batadv_v_elp_get_throughput(struct batadv_hardif_neigh_node *neigh)
{
 struct batadv_hard_iface *hard_iface = neigh->if_incoming;
 struct ethtool_link_ksettings link_settings;
 struct net_device *real_netdev;
 struct station_info sinfo;
 u32 throughput;
 int ret;




 throughput = atomic_read(&hard_iface->bat_v.throughput_override);
 if (throughput != 0)
  return throughput;




 if (batadv_is_wifi_hardif(hard_iface)) {
  if (!batadv_is_cfg80211_hardif(hard_iface))

   goto default_throughput;

  real_netdev = batadv_get_real_netdev(hard_iface->net_dev);
  if (!real_netdev)
   goto default_throughput;

  ret = cfg80211_get_station(real_netdev, neigh->addr, &sinfo);

  if (!ret) {

   cfg80211_sinfo_release_content(&sinfo);
  }

  dev_put(real_netdev);
  if (ret == -ENOENT) {




   return 0;
  }
  if (ret)
   goto default_throughput;
  if (!(sinfo.filled & BIT(NL80211_STA_INFO_EXPECTED_THROUGHPUT)))
   goto default_throughput;

  return sinfo.expected_throughput / 100;
 }




 memset(&link_settings, 0, sizeof(link_settings));
 rtnl_lock();
 ret = __ethtool_get_link_ksettings(hard_iface->net_dev, &link_settings);
 rtnl_unlock();
 if (ret == 0 && link_settings.base.autoneg == AUTONEG_ENABLE) {

  if (link_settings.base.duplex == DUPLEX_FULL)
   hard_iface->bat_v.flags |= BATADV_FULL_DUPLEX;
  else
   hard_iface->bat_v.flags &= ~BATADV_FULL_DUPLEX;

  throughput = link_settings.base.speed;
  if (throughput && throughput != SPEED_UNKNOWN)
   return throughput * 10;
 }

default_throughput:
 if (!(hard_iface->bat_v.flags & BATADV_WARNING_DEFAULT)) {
  batadv_info(hard_iface->soft_iface,
       "WiFi driver or ethtool info does not provide information about link speeds on interface %s, therefore defaulting to hardcoded throughput values of %u.%1u Mbps. Consider overriding the throughput manually or checking your driver.\n",
       hard_iface->net_dev->name,
       BATADV_THROUGHPUT_DEFAULT_VALUE / 10,
       BATADV_THROUGHPUT_DEFAULT_VALUE % 10);
  hard_iface->bat_v.flags |= BATADV_WARNING_DEFAULT;
 }


 return BATADV_THROUGHPUT_DEFAULT_VALUE;
}
