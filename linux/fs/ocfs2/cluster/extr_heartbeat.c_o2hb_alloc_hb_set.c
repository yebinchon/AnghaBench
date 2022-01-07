
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_group {int dummy; } ;
struct o2hb_heartbeat_group {struct config_group hs_group; } ;


 int GFP_KERNEL ;
 int config_group_init_type_name (struct config_group*,char*,int *) ;
 int kfree (struct o2hb_heartbeat_group*) ;
 struct o2hb_heartbeat_group* kzalloc (int,int ) ;
 int o2hb_heartbeat_group_type ;

struct config_group *o2hb_alloc_hb_set(void)
{
 struct o2hb_heartbeat_group *hs = ((void*)0);
 struct config_group *ret = ((void*)0);

 hs = kzalloc(sizeof(struct o2hb_heartbeat_group), GFP_KERNEL);
 if (hs == ((void*)0))
  goto out;

 config_group_init_type_name(&hs->hs_group, "heartbeat",
        &o2hb_heartbeat_group_type);

 ret = &hs->hs_group;
out:
 if (ret == ((void*)0))
  kfree(hs);
 return ret;
}
