
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p; } ;
struct snd_kcontrol_new {int access; TYPE_1__ tlv; int put; int get; int info; } ;
struct snd_card_asihpi {struct snd_card* card; } ;
struct snd_card {int dummy; } ;
struct hpi_control {int dummy; } ;


 int SNDRV_CTL_ELEM_ACCESS_READWRITE ;
 int SNDRV_CTL_ELEM_ACCESS_TLV_READ ;
 int asihpi_ctl_init (struct snd_kcontrol_new*,struct hpi_control*,char*) ;
 int ctl_add (struct snd_card*,struct snd_kcontrol_new*,struct snd_card_asihpi*) ;
 int db_scale_level ;
 int snd_asihpi_level_get ;
 int snd_asihpi_level_info ;
 int snd_asihpi_level_put ;

__attribute__((used)) static int snd_asihpi_level_add(struct snd_card_asihpi *asihpi,
    struct hpi_control *hpi_ctl)
{
 struct snd_card *card = asihpi->card;
 struct snd_kcontrol_new snd_control;


 asihpi_ctl_init(&snd_control, hpi_ctl, "Level");
 snd_control.access = SNDRV_CTL_ELEM_ACCESS_READWRITE |
    SNDRV_CTL_ELEM_ACCESS_TLV_READ;
 snd_control.info = snd_asihpi_level_info;
 snd_control.get = snd_asihpi_level_get;
 snd_control.put = snd_asihpi_level_put;
 snd_control.tlv.p = db_scale_level;

 return ctl_add(card, &snd_control, asihpi);
}
