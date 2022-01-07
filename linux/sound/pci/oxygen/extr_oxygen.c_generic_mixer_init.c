
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int card; } ;


 int rolloff_control ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct oxygen*) ;

__attribute__((used)) static int generic_mixer_init(struct oxygen *chip)
{
 return snd_ctl_add(chip->card, snd_ctl_new1(&rolloff_control, chip));
}
