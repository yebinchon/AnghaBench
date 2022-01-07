
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int put; int get; int info; int access; int private_value; } ;
struct snd_card_asihpi {struct snd_card* card; } ;
struct snd_card {int dummy; } ;
struct hpi_control {int h_control; } ;


 int EINVAL ;
 int SNDRV_CTL_ELEM_ACCESS_READWRITE ;
 int asihpi_ctl_init (struct snd_kcontrol_new*,struct hpi_control*,char*) ;
 int ctl_add (struct snd_card*,struct snd_kcontrol_new*,struct snd_card_asihpi*) ;
 int hpi_tuner_get_gain (int ,int *) ;
 int snd_asihpi_tuner_band_get ;
 int snd_asihpi_tuner_band_info ;
 int snd_asihpi_tuner_band_put ;
 int snd_asihpi_tuner_freq_get ;
 int snd_asihpi_tuner_freq_info ;
 int snd_asihpi_tuner_freq_put ;
 int snd_asihpi_tuner_gain_get ;
 int snd_asihpi_tuner_gain_info ;
 int snd_asihpi_tuner_gain_put ;

__attribute__((used)) static int snd_asihpi_tuner_add(struct snd_card_asihpi *asihpi,
    struct hpi_control *hpi_ctl)
{
 struct snd_card *card = asihpi->card;
 struct snd_kcontrol_new snd_control;

 snd_control.private_value = hpi_ctl->h_control;
 snd_control.access = SNDRV_CTL_ELEM_ACCESS_READWRITE;

 if (!hpi_tuner_get_gain(hpi_ctl->h_control, ((void*)0))) {
  asihpi_ctl_init(&snd_control, hpi_ctl, "Gain");
  snd_control.info = snd_asihpi_tuner_gain_info;
  snd_control.get = snd_asihpi_tuner_gain_get;
  snd_control.put = snd_asihpi_tuner_gain_put;

  if (ctl_add(card, &snd_control, asihpi) < 0)
   return -EINVAL;
 }

 asihpi_ctl_init(&snd_control, hpi_ctl, "Band");
 snd_control.info = snd_asihpi_tuner_band_info;
 snd_control.get = snd_asihpi_tuner_band_get;
 snd_control.put = snd_asihpi_tuner_band_put;

 if (ctl_add(card, &snd_control, asihpi) < 0)
  return -EINVAL;

 asihpi_ctl_init(&snd_control, hpi_ctl, "Freq");
 snd_control.info = snd_asihpi_tuner_freq_info;
 snd_control.get = snd_asihpi_tuner_freq_get;
 snd_control.put = snd_asihpi_tuner_freq_put;

 return ctl_add(card, &snd_control, asihpi);
}
