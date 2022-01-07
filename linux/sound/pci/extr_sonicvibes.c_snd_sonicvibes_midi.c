
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonicvibes {struct snd_card* card; } ;
struct snd_rawmidi {struct snd_mpu401* private_data; } ;
struct snd_mpu401 {int close_input; int open_input; struct sonicvibes* private_data; } ;
struct snd_card {int dummy; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (int *,struct sonicvibes*) ;
 int * snd_sonicvibes_midi_controls ;
 int snd_sonicvibes_midi_input_close ;
 int snd_sonicvibes_midi_input_open ;

__attribute__((used)) static int snd_sonicvibes_midi(struct sonicvibes *sonic,
          struct snd_rawmidi *rmidi)
{
 struct snd_mpu401 * mpu = rmidi->private_data;
 struct snd_card *card = sonic->card;
 unsigned int idx;
 int err;

 mpu->private_data = sonic;
 mpu->open_input = snd_sonicvibes_midi_input_open;
 mpu->close_input = snd_sonicvibes_midi_input_close;
 for (idx = 0; idx < ARRAY_SIZE(snd_sonicvibes_midi_controls); idx++)
  if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_sonicvibes_midi_controls[idx], sonic))) < 0)
   return err;
 return 0;
}
