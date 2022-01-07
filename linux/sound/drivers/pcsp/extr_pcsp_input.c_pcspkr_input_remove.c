
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int input_unregister_device (struct input_dev*) ;
 int pcspkr_stop_sound () ;

int pcspkr_input_remove(struct input_dev *dev)
{
 pcspkr_stop_sound();
 input_unregister_device(dev);

 return 0;
}
