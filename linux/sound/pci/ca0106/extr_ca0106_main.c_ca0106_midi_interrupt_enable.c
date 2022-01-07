
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ca_midi {scalar_t__ dev_id; } ;
struct snd_ca0106 {int dummy; } ;


 int snd_ca0106_intr_enable (struct snd_ca0106*,int) ;

__attribute__((used)) static void ca0106_midi_interrupt_enable(struct snd_ca_midi *midi, int intr)
{
 snd_ca0106_intr_enable((struct snd_ca0106 *)(midi->dev_id), intr);
}
