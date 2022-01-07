
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int card; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int * dg_controls ;
 int input_source_apply (struct oxygen*) ;
 int output_select_apply (struct oxygen*) ;
 int oxygen_update_dac_routing (struct oxygen*) ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct oxygen*) ;

__attribute__((used)) static int dg_mixer_init(struct oxygen *chip)
{
 unsigned int i;
 int err;

 output_select_apply(chip);
 input_source_apply(chip);
 oxygen_update_dac_routing(chip);

 for (i = 0; i < ARRAY_SIZE(dg_controls); ++i) {
  err = snd_ctl_add(chip->card,
      snd_ctl_new1(&dg_controls[i], chip));
  if (err < 0)
   return err;
 }

 return 0;
}
