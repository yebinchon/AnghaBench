
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int full_path ;


 int read_sysfs_hex_int (char*) ;
 int snprintf (char*,int,char*,char*,char const*) ;

__attribute__((used)) static int read_sysfs_netdev_hex_int(char *devname, const char *entry_name)
{
 char full_path[64];

 snprintf(full_path, sizeof(full_path), "/sys/class/net/%s/device/%s",
   devname, entry_name);

 return read_sysfs_hex_int(full_path);
}
