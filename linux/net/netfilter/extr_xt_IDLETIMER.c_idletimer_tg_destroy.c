
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xt_tgdtor_param {struct idletimer_tg_info* targinfo; } ;
struct idletimer_tg_info {TYPE_3__* timer; int label; } ;
struct TYPE_5__ {TYPE_3__* name; } ;
struct TYPE_4__ {TYPE_2__ attr; } ;
struct TYPE_6__ {scalar_t__ refcnt; TYPE_1__ attr; int work; int timer; int entry; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int idletimer_tg_kobj ;
 int kfree (TYPE_3__*) ;
 int list_del (int *) ;
 int list_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,...) ;
 int sysfs_remove_file (int ,TYPE_2__*) ;

__attribute__((used)) static void idletimer_tg_destroy(const struct xt_tgdtor_param *par)
{
 const struct idletimer_tg_info *info = par->targinfo;

 pr_debug("destroy targinfo %s\n", info->label);

 mutex_lock(&list_mutex);

 if (--info->timer->refcnt == 0) {
  pr_debug("deleting timer %s\n", info->label);

  list_del(&info->timer->entry);
  del_timer_sync(&info->timer->timer);
  cancel_work_sync(&info->timer->work);
  sysfs_remove_file(idletimer_tg_kobj, &info->timer->attr.attr);
  kfree(info->timer->attr.attr.name);
  kfree(info->timer);
 } else {
  pr_debug("decreased refcnt of timer %s to %u\n",
    info->label, info->timer->refcnt);
 }

 mutex_unlock(&list_mutex);
}
