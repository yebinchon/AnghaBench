
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dummy; } ;


 int skl_hda_hdmi_jack_init (struct snd_soc_card*) ;

__attribute__((used)) static int skl_hda_card_late_probe(struct snd_soc_card *card)
{
 return skl_hda_hdmi_jack_init(card);
}
