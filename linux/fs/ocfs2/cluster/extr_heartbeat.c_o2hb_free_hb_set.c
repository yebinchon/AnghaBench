
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_heartbeat_group {int dummy; } ;
struct config_group {int dummy; } ;


 int kfree (struct o2hb_heartbeat_group*) ;
 struct o2hb_heartbeat_group* to_o2hb_heartbeat_group (struct config_group*) ;

void o2hb_free_hb_set(struct config_group *group)
{
 struct o2hb_heartbeat_group *hs = to_o2hb_heartbeat_group(group);
 kfree(hs);
}
