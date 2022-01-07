
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;
struct dsa_port {int pl; } ;


 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int phylink_ethtool_ksettings_get (int ,struct ethtool_link_ksettings*) ;

__attribute__((used)) static int dsa_slave_get_link_ksettings(struct net_device *dev,
     struct ethtool_link_ksettings *cmd)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);

 return phylink_ethtool_ksettings_get(dp->pl, cmd);
}
