
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ func; } ;
struct delayed_work {TYPE_2__ work; } ;
struct TYPE_3__ {struct delayed_work work; } ;
struct skl_dev {scalar_t__ supend_active; TYPE_1__ d0i3; } ;


 int cancel_delayed_work_sync (struct delayed_work*) ;
 int flush_delayed_work (struct delayed_work*) ;

int skl_suspend_late_dsp(struct skl_dev *skl)
{
 struct delayed_work *dwork;

 if (!skl)
  return 0;

 dwork = &skl->d0i3.work;

 if (dwork->work.func) {
  if (skl->supend_active)
   flush_delayed_work(dwork);
  else
   cancel_delayed_work_sync(dwork);
 }

 return 0;
}
