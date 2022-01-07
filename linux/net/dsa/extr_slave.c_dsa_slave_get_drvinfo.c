
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int driver; } ;


 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void dsa_slave_get_drvinfo(struct net_device *dev,
      struct ethtool_drvinfo *drvinfo)
{
 strlcpy(drvinfo->driver, "dsa", sizeof(drvinfo->driver));
 strlcpy(drvinfo->fw_version, "N/A", sizeof(drvinfo->fw_version));
 strlcpy(drvinfo->bus_info, "platform", sizeof(drvinfo->bus_info));
}
