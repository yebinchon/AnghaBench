
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfire_chip {struct comm_runtime* comm; } ;
struct comm_runtime {int receiver; } ;


 int usb_poison_urb (int *) ;

void usb6fire_comm_abort(struct sfire_chip *chip)
{
 struct comm_runtime *rt = chip->comm;

 if (rt)
  usb_poison_urb(&rt->receiver);
}
