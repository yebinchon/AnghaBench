
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_trap_item {void* priv; } ;



void *devlink_trap_ctx_priv(void *trap_ctx)
{
 struct devlink_trap_item *trap_item = trap_ctx;

 return trap_item->priv;
}
