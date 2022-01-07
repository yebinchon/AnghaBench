
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; int dma1; int dma2; } ;
struct snd_gus_card {int equal_irq; int codec_flag; int max_cntrl_val; TYPE_1__ gf1; int joystick_dac; } ;
struct snd_card {int dummy; } ;


 int GUSP (struct snd_gus_card*,int ) ;
 int MAXCNTRLPORT ;
 int * joystick_dac ;
 int outb (int,int ) ;

__attribute__((used)) static void snd_gusmax_init(int dev, struct snd_card *card,
       struct snd_gus_card *gus)
{
 gus->equal_irq = 1;
 gus->codec_flag = 1;
 gus->joystick_dac = joystick_dac[dev];

 gus->max_cntrl_val = (gus->gf1.port >> 4) & 0x0f;
 if (gus->gf1.dma1 > 3)
  gus->max_cntrl_val |= 0x10;
 if (gus->gf1.dma2 > 3)
  gus->max_cntrl_val |= 0x20;
 gus->max_cntrl_val |= 0x40;
 outb(gus->max_cntrl_val, GUSP(gus, MAXCNTRLPORT));
}
