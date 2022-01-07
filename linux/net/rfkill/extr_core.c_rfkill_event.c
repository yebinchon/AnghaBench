
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct rfkill {TYPE_1__ dev; int registered; } ;


 int KOBJ_CHANGE ;
 int RFKILL_OP_CHANGE ;
 int kobject_uevent (int *,int ) ;
 int rfkill_send_events (struct rfkill*,int ) ;

__attribute__((used)) static void rfkill_event(struct rfkill *rfkill)
{
 if (!rfkill->registered)
  return;

 kobject_uevent(&rfkill->dev.kobj, KOBJ_CHANGE);


 rfkill_send_events(rfkill, RFKILL_OP_CHANGE);
}
