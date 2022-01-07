
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfire_chip {struct midi_runtime* midi; } ;
struct midi_runtime {int out_urb; } ;


 int usb_poison_urb (int *) ;

void usb6fire_midi_abort(struct sfire_chip *chip)
{
 struct midi_runtime *rt = chip->midi;

 if (rt)
  usb_poison_urb(&rt->out_urb);
}
