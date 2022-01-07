
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_wss {int hardware; TYPE_1__* card; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct TYPE_2__ {int driver; } ;


 int EINVAL ;



 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,char const* const*) ;
 struct snd_wss* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int snd_wss_info_mux(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_info *uinfo)
{
 static const char * const texts[4] = {
  "Line", "Aux", "Mic", "Mix"
 };
 static const char * const opl3sa_texts[4] = {
  "Line", "CD", "Mic", "Mix"
 };
 static const char * const gusmax_texts[4] = {
  "Line", "Synth", "Mic", "Mix"
 };
 const char * const *ptexts = texts;
 struct snd_wss *chip = snd_kcontrol_chip(kcontrol);

 if (snd_BUG_ON(!chip->card))
  return -EINVAL;
 if (!strcmp(chip->card->driver, "GUS MAX"))
  ptexts = gusmax_texts;
 switch (chip->hardware) {
 case 130:
  ptexts = gusmax_texts;
  break;
 case 128:
 case 129:
  ptexts = opl3sa_texts;
  break;
 }
 return snd_ctl_enum_info(uinfo, 2, 4, ptexts);
}
