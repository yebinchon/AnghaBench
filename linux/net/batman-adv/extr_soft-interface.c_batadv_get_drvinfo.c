
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 char* BATADV_SOURCE_VERSION ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static void batadv_get_drvinfo(struct net_device *dev,
          struct ethtool_drvinfo *info)
{
 strscpy(info->driver, "B.A.T.M.A.N. advanced", sizeof(info->driver));
 strscpy(info->version, BATADV_SOURCE_VERSION, sizeof(info->version));
 strscpy(info->fw_version, "N/A", sizeof(info->fw_version));
 strscpy(info->bus_info, "batman", sizeof(info->bus_info));
}
