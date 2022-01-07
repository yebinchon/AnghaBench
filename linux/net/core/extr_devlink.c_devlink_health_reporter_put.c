
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_health_reporter {int refcount; } ;


 int refcount_dec (int *) ;

__attribute__((used)) static void
devlink_health_reporter_put(struct devlink_health_reporter *reporter)
{
 refcount_dec(&reporter->refcount);
}
