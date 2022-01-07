
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_boot_setup {char* name; int map; } ;
struct ifmap {int dummy; } ;


 int IFNAMSIZ ;
 int NETDEV_BOOT_SETUP_MAX ;
 struct netdev_boot_setup* dev_boot_setup ;
 int memcpy (int *,struct ifmap*,int) ;
 int memset (char*,int ,int) ;
 int strlcpy (char*,char*,int ) ;

__attribute__((used)) static int netdev_boot_setup_add(char *name, struct ifmap *map)
{
 struct netdev_boot_setup *s;
 int i;

 s = dev_boot_setup;
 for (i = 0; i < NETDEV_BOOT_SETUP_MAX; i++) {
  if (s[i].name[0] == '\0' || s[i].name[0] == ' ') {
   memset(s[i].name, 0, sizeof(s[i].name));
   strlcpy(s[i].name, name, IFNAMSIZ);
   memcpy(&s[i].map, map, sizeof(s[i].map));
   break;
  }
 }

 return i >= NETDEV_BOOT_SETUP_MAX ? 0 : 1;
}
