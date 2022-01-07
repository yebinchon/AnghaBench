
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfire_chip {int * control; } ;


 int kfree (int *) ;

void usb6fire_control_destroy(struct sfire_chip *chip)
{
 kfree(chip->control);
 chip->control = ((void*)0);
}
