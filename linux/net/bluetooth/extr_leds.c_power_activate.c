
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct led_classdev {int trigger; } ;
struct hci_basic_led_trigger {TYPE_1__* hdev; } ;
struct TYPE_2__ {int flags; } ;


 int HCI_UP ;
 int LED_FULL ;
 int LED_OFF ;
 int led_trigger_event (int ,int ) ;
 int test_bit (int ,int *) ;
 struct hci_basic_led_trigger* to_hci_basic_led_trigger (int ) ;

__attribute__((used)) static int power_activate(struct led_classdev *led_cdev)
{
 struct hci_basic_led_trigger *htrig;
 bool powered;

 htrig = to_hci_basic_led_trigger(led_cdev->trigger);
 powered = test_bit(HCI_UP, &htrig->hdev->flags);

 led_trigger_event(led_cdev->trigger, powered ? LED_FULL : LED_OFF);

 return 0;
}
