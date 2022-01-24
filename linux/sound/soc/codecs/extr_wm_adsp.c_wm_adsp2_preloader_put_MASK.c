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
struct wm_adsp {char* name; int /*<<< orphan*/  boot_work; scalar_t__ preloaded; } ;
struct soc_mixer_control {int shift; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,char*) ; 
 struct snd_soc_dapm_context* FUNC4 (struct snd_soc_component*) ; 
 struct wm_adsp* FUNC5 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*) ; 
 struct snd_soc_component* FUNC7 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,char*,char*) ; 

int FUNC9(struct snd_kcontrol *kcontrol,
			   struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC7(kcontrol);
	struct wm_adsp *dsps = FUNC5(component);
	struct snd_soc_dapm_context *dapm = FUNC4(component);
	struct soc_mixer_control *mc =
		(struct soc_mixer_control *)kcontrol->private_value;
	struct wm_adsp *dsp = &dsps[mc->shift - 1];
	char preload[32];

	FUNC8(preload, FUNC0(preload), "%s Preload", dsp->name);

	dsp->preloaded = ucontrol->value.integer.value[0];

	if (ucontrol->value.integer.value[0])
		FUNC3(component, preload);
	else
		FUNC2(component, preload);

	FUNC6(dapm);

	FUNC1(&dsp->boot_work);

	return 0;
}