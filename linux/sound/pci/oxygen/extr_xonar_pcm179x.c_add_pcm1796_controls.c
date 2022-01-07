
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_pcm179x {int broken_i2c; } ;
struct oxygen {int card; struct xonar_pcm179x* model_data; } ;


 int deemph_control ;
 int rolloff_control ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct oxygen*) ;

__attribute__((used)) static int add_pcm1796_controls(struct oxygen *chip)
{
 struct xonar_pcm179x *data = chip->model_data;
 int err;

 if (!data->broken_i2c) {
  err = snd_ctl_add(chip->card,
      snd_ctl_new1(&rolloff_control, chip));
  if (err < 0)
   return err;
  err = snd_ctl_add(chip->card,
      snd_ctl_new1(&deemph_control, chip));
  if (err < 0)
   return err;
 }
 return 0;
}
