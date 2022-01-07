
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;






 int hung_detector_suspended ;

__attribute__((used)) static int hungtask_pm_notify(struct notifier_block *self,
         unsigned long action, void *hcpu)
{
 switch (action) {
 case 128:
 case 133:
 case 129:
  hung_detector_suspended = 1;
  break;
 case 130:
 case 132:
 case 131:
  hung_detector_suspended = 0;
  break;
 default:
  break;
 }
 return NOTIFY_OK;
}
