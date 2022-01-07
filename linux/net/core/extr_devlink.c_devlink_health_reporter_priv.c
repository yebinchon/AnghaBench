
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_health_reporter {void* priv; } ;



void *
devlink_health_reporter_priv(struct devlink_health_reporter *reporter)
{
 return reporter->priv;
}
