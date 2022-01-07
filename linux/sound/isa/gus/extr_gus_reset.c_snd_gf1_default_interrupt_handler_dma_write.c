
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int dummy; } ;


 int snd_gf1_i_write8 (struct snd_gus_card*,int,int) ;

__attribute__((used)) static void snd_gf1_default_interrupt_handler_dma_write(struct snd_gus_card * gus)
{
 snd_gf1_i_write8(gus, 0x41, 0x00);
}
