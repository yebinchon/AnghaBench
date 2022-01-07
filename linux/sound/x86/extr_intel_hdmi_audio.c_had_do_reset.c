
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_intelhad {int need_reset; int connected; } ;


 int had_reset_audio (struct snd_intelhad*) ;
 int wait_clear_underrun_bit (struct snd_intelhad*) ;

__attribute__((used)) static void had_do_reset(struct snd_intelhad *intelhaddata)
{
 if (!intelhaddata->need_reset || !intelhaddata->connected)
  return;


 had_reset_audio(intelhaddata);
 wait_clear_underrun_bit(intelhaddata);
 intelhaddata->need_reset = 0;
}
