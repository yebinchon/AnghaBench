
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pmac {int resume; TYPE_2__* card; int mixer_free; struct pmac_daca* mixer_data; } ;
struct TYPE_3__ {char* name; int init_client; int addr; } ;
struct pmac_daca {int amp_on; TYPE_1__ i2c; } ;
struct TYPE_4__ {int mixername; } ;


 int ARRAY_SIZE (int *) ;
 int DACA_I2C_ADDR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int daca_cleanup ;
 int daca_init_client ;
 int * daca_mixers ;
 int daca_resume ;
 struct pmac_daca* kzalloc (int,int ) ;
 int request_module (char*) ;
 int snd_ctl_add (TYPE_2__*,int ) ;
 int snd_ctl_new1 (int *,struct snd_pmac*) ;
 int snd_pmac_keywest_init (TYPE_1__*) ;
 int strcpy (int ,char*) ;

int snd_pmac_daca_init(struct snd_pmac *chip)
{
 int i, err;
 struct pmac_daca *mix;

 request_module("i2c-powermac");

 mix = kzalloc(sizeof(*mix), GFP_KERNEL);
 if (! mix)
  return -ENOMEM;
 chip->mixer_data = mix;
 chip->mixer_free = daca_cleanup;
 mix->amp_on = 1;

 mix->i2c.addr = DACA_I2C_ADDR;
 mix->i2c.init_client = daca_init_client;
 mix->i2c.name = "DACA";
 if ((err = snd_pmac_keywest_init(&mix->i2c)) < 0)
  return err;




 strcpy(chip->card->mixername, "PowerMac DACA");

 for (i = 0; i < ARRAY_SIZE(daca_mixers); i++) {
  if ((err = snd_ctl_add(chip->card, snd_ctl_new1(&daca_mixers[i], chip))) < 0)
   return err;
 }





 return 0;
}
