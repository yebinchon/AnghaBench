
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int name; } ;
struct snd_card {int dummy; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*,int ,int) ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_soc_cnew (struct snd_kcontrol_new const*,void*,int ,char const*) ;

__attribute__((used)) static int snd_soc_add_controls(struct snd_card *card, struct device *dev,
 const struct snd_kcontrol_new *controls, int num_controls,
 const char *prefix, void *data)
{
 int err, i;

 for (i = 0; i < num_controls; i++) {
  const struct snd_kcontrol_new *control = &controls[i];

  err = snd_ctl_add(card, snd_soc_cnew(control, data,
           control->name, prefix));
  if (err < 0) {
   dev_err(dev, "ASoC: Failed to add %s: %d\n",
    control->name, err);
   return err;
  }
 }

 return 0;
}
