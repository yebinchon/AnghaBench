#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct snd_kcontrol {int /*<<< orphan*/  id; } ;
struct snd_ice1712 {int /*<<< orphan*/  card; struct psc724_spec* spec; } ;
struct snd_ctl_elem_id {int /*<<< orphan*/  name; int /*<<< orphan*/  iface; } ;
struct TYPE_4__ {int* regs; TYPE_1__* ctl; } ;
struct psc724_spec {int hp_connected; TYPE_2__ wm8776; } ;
typedef  int /*<<< orphan*/  elem_id ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_CTL_ELEM_IFACE_MIXER ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_VALUE ; 
 size_t WM8776_CTL_HP_SW ; 
 int WM8776_PWR_HPPD ; 
 size_t WM8776_REG_PWRDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct snd_ctl_elem_id*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_ice1712*,int) ; 
 struct snd_kcontrol* FUNC2 (int /*<<< orphan*/ ,struct snd_ctl_elem_id*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC6(struct snd_ice1712 *ice, bool hp_connected)
{
	struct psc724_spec *spec = ice->spec;
	struct snd_ctl_elem_id elem_id;
	struct snd_kcontrol *kctl;
	u16 power = spec->wm8776.regs[WM8776_REG_PWRDOWN] & ~WM8776_PWR_HPPD;

	FUNC1(ice, !hp_connected);
	if (!hp_connected)
		power |= WM8776_PWR_HPPD;
	FUNC4(&spec->wm8776, power);
	spec->hp_connected = hp_connected;
	/* notify about master speaker mute change */
	FUNC0(&elem_id, 0, sizeof(elem_id));
	elem_id.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
	FUNC5(elem_id.name, "Master Speakers Playback Switch",
						sizeof(elem_id.name));
	kctl = FUNC2(ice->card, &elem_id);
	FUNC3(ice->card, SNDRV_CTL_EVENT_MASK_VALUE, &kctl->id);
	/* and headphone mute change */
	FUNC5(elem_id.name, spec->wm8776.ctl[WM8776_CTL_HP_SW].name,
						sizeof(elem_id.name));
	kctl = FUNC2(ice->card, &elem_id);
	FUNC3(ice->card, SNDRV_CTL_EVENT_MASK_VALUE, &kctl->id);
}