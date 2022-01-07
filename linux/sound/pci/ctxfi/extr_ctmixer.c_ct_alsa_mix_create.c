
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ct_mixer {int dummy; } ;
struct ct_atc {TYPE_1__* card; scalar_t__ mixer; } ;
typedef enum CTALSADEVS { ____Placeholder_CTALSADEVS } CTALSADEVS ;
struct TYPE_2__ {int mixername; } ;


 int ct_mixer_kcontrols_create (struct ct_mixer*) ;
 int strcpy (int ,char const*) ;

int ct_alsa_mix_create(struct ct_atc *atc,
         enum CTALSADEVS device,
         const char *device_name)
{
 int err;



 err = ct_mixer_kcontrols_create((struct ct_mixer *)atc->mixer);
 if (err)
  return err;

 strcpy(atc->card->mixername, device_name);

 return 0;
}
