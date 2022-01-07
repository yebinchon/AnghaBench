
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_cs46xx {scalar_t__ in_suspend; struct snd_card* card; } ;
struct snd_card {int dev; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,int) ;
 int hercules_init (struct snd_cs46xx*) ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct snd_cs46xx*) ;
 int * snd_hercules_controls ;

__attribute__((used)) static void hercules_mixer_init (struct snd_cs46xx *chip)
{







 hercules_init(chip);

 dev_dbg(chip->card->dev, "initializing Hercules mixer\n");
}
