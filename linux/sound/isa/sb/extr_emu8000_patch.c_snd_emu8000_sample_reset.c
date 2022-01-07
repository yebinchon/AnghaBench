
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux {int dummy; } ;


 int snd_emux_terminate_all (struct snd_emux*) ;

void
snd_emu8000_sample_reset(struct snd_emux *rec)
{
 snd_emux_terminate_all(rec);
}
