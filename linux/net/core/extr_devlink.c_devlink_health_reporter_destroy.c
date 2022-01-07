
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlink_health_reporter {scalar_t__ dump_fmsg; int dump_lock; int refcount; TYPE_1__* devlink; int list; } ;
struct TYPE_2__ {int reporters_lock; } ;


 int devlink_fmsg_free (scalar_t__) ;
 int kfree (struct devlink_health_reporter*) ;
 int list_del (int *) ;
 int msleep (int) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int refcount_read (int *) ;

void
devlink_health_reporter_destroy(struct devlink_health_reporter *reporter)
{
 mutex_lock(&reporter->devlink->reporters_lock);
 list_del(&reporter->list);
 mutex_unlock(&reporter->devlink->reporters_lock);
 while (refcount_read(&reporter->refcount) > 1)
  msleep(100);
 mutex_destroy(&reporter->dump_lock);
 if (reporter->dump_fmsg)
  devlink_fmsg_free(reporter->dump_fmsg);
 kfree(reporter);
}
