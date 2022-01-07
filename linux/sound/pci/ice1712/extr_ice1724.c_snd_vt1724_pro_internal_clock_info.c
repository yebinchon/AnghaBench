
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {int* data; } ;
struct snd_ice1712 {TYPE_2__* hw_rates; int * ext_clock_names; scalar_t__ ext_clock_count; TYPE_1__ eeprom; scalar_t__ force_rdma1; } ;
struct TYPE_7__ {int items; int item; int name; } ;
struct TYPE_8__ {TYPE_3__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_4__ value; int type; } ;
struct TYPE_6__ {int count; int* list; } ;


 size_t ICE_EEP2_SPDIF ;
 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 int VT1724_CFG_SPDIF_IN ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int sprintf (int ,char*,int) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_vt1724_pro_internal_clock_info(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_info *uinfo)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 int hw_rates_count = ice->hw_rates->count;
 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;


 uinfo->value.enumerated.items = hw_rates_count;

 if (ice->force_rdma1 ||
     (ice->eeprom.data[ICE_EEP2_SPDIF] & VT1724_CFG_SPDIF_IN))
  uinfo->value.enumerated.items += ice->ext_clock_count;

 if (uinfo->value.enumerated.item >= uinfo->value.enumerated.items)
  uinfo->value.enumerated.item = uinfo->value.enumerated.items - 1;
 if (uinfo->value.enumerated.item >= hw_rates_count)

  strcpy(uinfo->value.enumerated.name,
    ice->ext_clock_names[
    uinfo->value.enumerated.item - hw_rates_count]);
 else

  sprintf(uinfo->value.enumerated.name, "%d",
   ice->hw_rates->list[uinfo->value.enumerated.item]);
 return 0;
}
