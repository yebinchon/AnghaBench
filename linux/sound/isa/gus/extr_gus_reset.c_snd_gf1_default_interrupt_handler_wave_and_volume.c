
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_voice {int dummy; } ;
struct snd_gus_card {int dummy; } ;


 int snd_gf1_i_ctrl_stop (struct snd_gus_card*,int) ;

__attribute__((used)) static void snd_gf1_default_interrupt_handler_wave_and_volume(struct snd_gus_card * gus, struct snd_gus_voice * voice)
{
 snd_gf1_i_ctrl_stop(gus, 0x00);
 snd_gf1_i_ctrl_stop(gus, 0x0d);
}
