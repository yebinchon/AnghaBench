
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int power_led; } ;


 int led_allocate_basic (struct hci_dev*,int ,char*) ;
 int power_activate ;

void hci_leds_init(struct hci_dev *hdev)
{

 hdev->power_led = led_allocate_basic(hdev, power_activate, "power");
}
