
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct snd_kcontrol {int id; } ;
struct snd_ice1712 {int card; struct psc724_spec* spec; } ;
struct snd_ctl_elem_id {int name; int iface; } ;
struct TYPE_4__ {int* regs; TYPE_1__* ctl; } ;
struct psc724_spec {int hp_connected; TYPE_2__ wm8776; } ;
typedef int elem_id ;
struct TYPE_3__ {char* name; } ;


 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 size_t WM8776_CTL_HP_SW ;
 int WM8776_PWR_HPPD ;
 size_t WM8776_REG_PWRDOWN ;
 int memset (struct snd_ctl_elem_id*,int ,int) ;
 int psc724_set_master_switch (struct snd_ice1712*,int) ;
 struct snd_kcontrol* snd_ctl_find_id (int ,struct snd_ctl_elem_id*) ;
 int snd_ctl_notify (int ,int ,int *) ;
 int snd_wm8776_set_power (TYPE_2__*,int) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static void psc724_set_jack_state(struct snd_ice1712 *ice, bool hp_connected)
{
 struct psc724_spec *spec = ice->spec;
 struct snd_ctl_elem_id elem_id;
 struct snd_kcontrol *kctl;
 u16 power = spec->wm8776.regs[WM8776_REG_PWRDOWN] & ~WM8776_PWR_HPPD;

 psc724_set_master_switch(ice, !hp_connected);
 if (!hp_connected)
  power |= WM8776_PWR_HPPD;
 snd_wm8776_set_power(&spec->wm8776, power);
 spec->hp_connected = hp_connected;

 memset(&elem_id, 0, sizeof(elem_id));
 elem_id.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 strlcpy(elem_id.name, "Master Speakers Playback Switch",
      sizeof(elem_id.name));
 kctl = snd_ctl_find_id(ice->card, &elem_id);
 snd_ctl_notify(ice->card, SNDRV_CTL_EVENT_MASK_VALUE, &kctl->id);

 strlcpy(elem_id.name, spec->wm8776.ctl[WM8776_CTL_HP_SW].name,
      sizeof(elem_id.name));
 kctl = snd_ctl_find_id(ice->card, &elem_id);
 snd_ctl_notify(ice->card, SNDRV_CTL_EVENT_MASK_VALUE, &kctl->id);
}
