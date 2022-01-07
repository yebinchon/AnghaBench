
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ct_atc {TYPE_1__* card; int chip_name; } ;
typedef enum CTALSADEVS { ____Placeholder_CTALSADEVS } CTALSADEVS ;
struct TYPE_4__ {int (* create ) (struct ct_atc*,int,int ) ;int public_name; } ;
struct TYPE_3__ {int dev; } ;


 size_t MIXER ;
 int NUM_CTALSADEVS ;
 TYPE_2__* alsa_dev_funcs ;
 int dev_err (int ,char*,int) ;
 int stub1 (struct ct_atc*,int,int ) ;

int ct_atc_create_alsa_devs(struct ct_atc *atc)
{
 enum CTALSADEVS i;
 int err;

 alsa_dev_funcs[MIXER].public_name = atc->chip_name;

 for (i = 0; i < NUM_CTALSADEVS; i++) {
  if (!alsa_dev_funcs[i].create)
   continue;

  err = alsa_dev_funcs[i].create(atc, i,
    alsa_dev_funcs[i].public_name);
  if (err) {
   dev_err(atc->card->dev,
    "Creating alsa device %d failed!\n", i);
   return err;
  }
 }

 return 0;
}
