
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_drvinfo {int bus_info; int fw_version; int version; int driver; } ;


 char* BR_VERSION ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void br_getinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
 strlcpy(info->driver, "bridge", sizeof(info->driver));
 strlcpy(info->version, BR_VERSION, sizeof(info->version));
 strlcpy(info->fw_version, "N/A", sizeof(info->fw_version));
 strlcpy(info->bus_info, "N/A", sizeof(info->bus_info));
}
