
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sh_dac {int empty; scalar_t__ processed; int data_buffer; int buffer_end; int buffer_begin; } ;


 int dac_audio_stop_timer (struct snd_sh_dac*) ;

__attribute__((used)) static void dac_audio_reset(struct snd_sh_dac *chip)
{
 dac_audio_stop_timer(chip);
 chip->buffer_begin = chip->buffer_end = chip->data_buffer;
 chip->processed = 0;
 chip->empty = 1;
}
