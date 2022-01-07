
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int eth_tp_mdix_ctrl; int eth_tp_mdix; int mdio_support; int autoneg; int phy_address; int port; int duplex; int speed; } ;
struct TYPE_3__ {int lp_advertising; int advertising; int supported; } ;
struct ethtool_link_ksettings {TYPE_2__ base; TYPE_1__ link_modes; } ;
struct ethtool_cmd {int eth_tp_mdix_ctrl; int eth_tp_mdix; int mdio_support; int autoneg; int phy_address; int port; int duplex; int lp_advertising; int advertising; int supported; scalar_t__ maxrxpkt; scalar_t__ maxtxpkt; } ;


 int ethtool_cmd_speed (struct ethtool_cmd const*) ;
 int ethtool_convert_legacy_u32_to_link_mode (int ,int ) ;
 int memset (struct ethtool_link_ksettings*,int ,int) ;

__attribute__((used)) static bool
convert_legacy_settings_to_link_ksettings(
 struct ethtool_link_ksettings *link_ksettings,
 const struct ethtool_cmd *legacy_settings)
{
 bool retval = 1;

 memset(link_ksettings, 0, sizeof(*link_ksettings));





 if (legacy_settings->maxtxpkt ||
     legacy_settings->maxrxpkt)
  retval = 0;

 ethtool_convert_legacy_u32_to_link_mode(
  link_ksettings->link_modes.supported,
  legacy_settings->supported);
 ethtool_convert_legacy_u32_to_link_mode(
  link_ksettings->link_modes.advertising,
  legacy_settings->advertising);
 ethtool_convert_legacy_u32_to_link_mode(
  link_ksettings->link_modes.lp_advertising,
  legacy_settings->lp_advertising);
 link_ksettings->base.speed
  = ethtool_cmd_speed(legacy_settings);
 link_ksettings->base.duplex
  = legacy_settings->duplex;
 link_ksettings->base.port
  = legacy_settings->port;
 link_ksettings->base.phy_address
  = legacy_settings->phy_address;
 link_ksettings->base.autoneg
  = legacy_settings->autoneg;
 link_ksettings->base.mdio_support
  = legacy_settings->mdio_support;
 link_ksettings->base.eth_tp_mdix
  = legacy_settings->eth_tp_mdix;
 link_ksettings->base.eth_tp_mdix_ctrl
  = legacy_settings->eth_tp_mdix_ctrl;
 return retval;
}
