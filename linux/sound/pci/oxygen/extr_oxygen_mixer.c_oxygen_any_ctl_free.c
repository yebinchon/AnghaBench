
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {struct oxygen* private_data; } ;
struct oxygen {int ** controls; } ;


 unsigned int ARRAY_SIZE (int **) ;

__attribute__((used)) static void oxygen_any_ctl_free(struct snd_kcontrol *ctl)
{
 struct oxygen *chip = ctl->private_data;
 unsigned int i;


 for (i = 0; i < ARRAY_SIZE(chip->controls); ++i)
  chip->controls[i] = ((void*)0);
}
