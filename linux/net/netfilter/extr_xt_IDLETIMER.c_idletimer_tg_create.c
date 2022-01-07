
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct idletimer_tg_info {int timeout; TYPE_4__* timer; int label; } ;
struct TYPE_8__ {int mode; TYPE_4__* name; } ;
struct TYPE_7__ {TYPE_2__ attr; int show; } ;
struct TYPE_9__ {int refcnt; TYPE_1__ attr; int timer; int work; int entry; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int idletimer_check_sysfs_name (int ,int) ;
 int idletimer_tg_expired ;
 int idletimer_tg_kobj ;
 int idletimer_tg_list ;
 int idletimer_tg_show ;
 int idletimer_tg_work ;
 scalar_t__ jiffies ;
 int kfree (TYPE_4__*) ;
 TYPE_4__* kmalloc (int,int ) ;
 TYPE_4__* kstrdup (int ,int ) ;
 int list_add (int *,int *) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;
 int pr_debug (char*) ;
 int sysfs_attr_init (TYPE_2__*) ;
 int sysfs_create_file (int ,TYPE_2__*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int idletimer_tg_create(struct idletimer_tg_info *info)
{
 int ret;

 info->timer = kmalloc(sizeof(*info->timer), GFP_KERNEL);
 if (!info->timer) {
  ret = -ENOMEM;
  goto out;
 }

 ret = idletimer_check_sysfs_name(info->label, sizeof(info->label));
 if (ret < 0)
  goto out_free_timer;

 sysfs_attr_init(&info->timer->attr.attr);
 info->timer->attr.attr.name = kstrdup(info->label, GFP_KERNEL);
 if (!info->timer->attr.attr.name) {
  ret = -ENOMEM;
  goto out_free_timer;
 }
 info->timer->attr.attr.mode = 0444;
 info->timer->attr.show = idletimer_tg_show;

 ret = sysfs_create_file(idletimer_tg_kobj, &info->timer->attr.attr);
 if (ret < 0) {
  pr_debug("couldn't add file to sysfs");
  goto out_free_attr;
 }

 list_add(&info->timer->entry, &idletimer_tg_list);

 timer_setup(&info->timer->timer, idletimer_tg_expired, 0);
 info->timer->refcnt = 1;

 INIT_WORK(&info->timer->work, idletimer_tg_work);

 mod_timer(&info->timer->timer,
    msecs_to_jiffies(info->timeout * 1000) + jiffies);

 return 0;

out_free_attr:
 kfree(info->timer->attr.attr.name);
out_free_timer:
 kfree(info->timer);
out:
 return ret;
}
