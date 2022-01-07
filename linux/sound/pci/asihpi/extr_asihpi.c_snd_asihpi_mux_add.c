
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int put; int get; int info; int access; } ;
struct snd_card_asihpi {struct snd_card* card; } ;
struct snd_card {int dummy; } ;
struct hpi_control {int dummy; } ;


 int SNDRV_CTL_ELEM_ACCESS_READWRITE ;
 int asihpi_ctl_init (struct snd_kcontrol_new*,struct hpi_control*,char*) ;
 int ctl_add (struct snd_card*,struct snd_kcontrol_new*,struct snd_card_asihpi*) ;
 int snd_asihpi_mux_get ;
 int snd_asihpi_mux_info ;
 int snd_asihpi_mux_put ;

__attribute__((used)) static int snd_asihpi_mux_add(struct snd_card_asihpi *asihpi,
          struct hpi_control *hpi_ctl)
{
 struct snd_card *card = asihpi->card;
 struct snd_kcontrol_new snd_control;

 asihpi_ctl_init(&snd_control, hpi_ctl, "Route");
 snd_control.access = SNDRV_CTL_ELEM_ACCESS_READWRITE;
 snd_control.info = snd_asihpi_mux_info;
 snd_control.get = snd_asihpi_mux_get;
 snd_control.put = snd_asihpi_mux_put;

 return ctl_add(card, &snd_control, asihpi);

}
