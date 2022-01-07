
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
typedef int ssize_t ;


 size_t o2hb_heartbeat_mode ;
 char** o2hb_heartbeat_mode_desc ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t o2hb_heartbeat_group_mode_show(struct config_item *item,
  char *page)
{
 return sprintf(page, "%s\n",
         o2hb_heartbeat_mode_desc[o2hb_heartbeat_mode]);
}
