
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_health_reporter {int * dump_fmsg; } ;


 int devlink_fmsg_free (int *) ;

__attribute__((used)) static void
devlink_health_dump_clear(struct devlink_health_reporter *reporter)
{
 if (!reporter->dump_fmsg)
  return;
 devlink_fmsg_free(reporter->dump_fmsg);
 reporter->dump_fmsg = ((void*)0);
}
