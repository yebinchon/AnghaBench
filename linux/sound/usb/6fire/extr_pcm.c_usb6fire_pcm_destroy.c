
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfire_chip {struct pcm_runtime* pcm; } ;
struct pcm_runtime {int dummy; } ;


 int kfree (struct pcm_runtime*) ;
 int usb6fire_pcm_buffers_destroy (struct pcm_runtime*) ;

void usb6fire_pcm_destroy(struct sfire_chip *chip)
{
 struct pcm_runtime *rt = chip->pcm;

 usb6fire_pcm_buffers_destroy(rt);
 kfree(rt);
 chip->pcm = ((void*)0);
}
