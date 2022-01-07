
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {int dummy; } ;


 unsigned int EV_KEY ;
 unsigned int EV_SW ;





 int RFKILL_TYPE_ALL ;
 int RFKILL_TYPE_BLUETOOTH ;
 int RFKILL_TYPE_UWB ;
 int RFKILL_TYPE_WIMAX ;
 int RFKILL_TYPE_WLAN ;
 unsigned int SW_RFKILL_ALL ;
 int rfkill_schedule_evsw_rfkillall (int) ;
 int rfkill_schedule_toggle (int ) ;

__attribute__((used)) static void rfkill_event(struct input_handle *handle, unsigned int type,
   unsigned int code, int data)
{
 if (type == EV_KEY && data == 1) {
  switch (code) {
  case 128:
   rfkill_schedule_toggle(RFKILL_TYPE_WLAN);
   break;
  case 132:
   rfkill_schedule_toggle(RFKILL_TYPE_BLUETOOTH);
   break;
  case 130:
   rfkill_schedule_toggle(RFKILL_TYPE_UWB);
   break;
  case 129:
   rfkill_schedule_toggle(RFKILL_TYPE_WIMAX);
   break;
  case 131:
   rfkill_schedule_toggle(RFKILL_TYPE_ALL);
   break;
  }
 } else if (type == EV_SW && code == SW_RFKILL_ALL)
  rfkill_schedule_evsw_rfkillall(data);
}
