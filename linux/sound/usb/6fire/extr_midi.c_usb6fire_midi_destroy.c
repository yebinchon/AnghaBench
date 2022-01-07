
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfire_chip {struct midi_runtime* midi; } ;
struct midi_runtime {struct midi_runtime* out_buffer; } ;


 int kfree (struct midi_runtime*) ;

void usb6fire_midi_destroy(struct sfire_chip *chip)
{
 struct midi_runtime *rt = chip->midi;

 kfree(rt->out_buffer);
 kfree(rt);
 chip->midi = ((void*)0);
}
