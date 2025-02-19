
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_wm87x6 {struct snd_kcontrol** lc_controls; } ;
struct snd_kcontrol {int dummy; } ;
struct oxygen {int card; struct xonar_wm87x6* model_data; } ;


 unsigned int ARRAY_SIZE (struct snd_kcontrol**) ;
 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 struct snd_kcontrol** lc_controls ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (struct snd_kcontrol**,struct oxygen*) ;

__attribute__((used)) static int add_lc_controls(struct oxygen *chip)
{
 struct xonar_wm87x6 *data = chip->model_data;
 unsigned int i;
 struct snd_kcontrol *ctl;
 int err;

 BUILD_BUG_ON(ARRAY_SIZE(lc_controls) != ARRAY_SIZE(data->lc_controls));
 for (i = 0; i < ARRAY_SIZE(lc_controls); ++i) {
  ctl = snd_ctl_new1(&lc_controls[i], chip);
  if (!ctl)
   return -ENOMEM;
  err = snd_ctl_add(chip->card, ctl);
  if (err < 0)
   return err;
  data->lc_controls[i] = ctl;
 }
 return 0;
}
