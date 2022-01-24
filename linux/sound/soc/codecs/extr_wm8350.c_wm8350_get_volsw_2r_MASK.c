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
struct wm8350_output {int /*<<< orphan*/  right_vol; int /*<<< orphan*/  left_vol; } ;
struct wm8350_data {struct wm8350_output out2; struct wm8350_output out1; } ;
struct soc_mixer_control {unsigned int reg; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int /*<<< orphan*/ * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
#define  WM8350_LOUT1_VOLUME 129 
#define  WM8350_LOUT2_VOLUME 128 
 struct wm8350_data* FUNC0 (struct snd_soc_component*) ; 
 int FUNC1 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 struct snd_soc_component* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
			       struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC2(kcontrol);
	struct wm8350_data *wm8350_priv = FUNC0(component);
	struct wm8350_output *out1 = &wm8350_priv->out1;
	struct wm8350_output *out2 = &wm8350_priv->out2;
	struct soc_mixer_control *mc =
		(struct soc_mixer_control *)kcontrol->private_value;
	unsigned int reg = mc->reg;

	/* If these are cached registers use the cache */
	switch (reg) {
	case WM8350_LOUT1_VOLUME:
		ucontrol->value.integer.value[0] = out1->left_vol;
		ucontrol->value.integer.value[1] = out1->right_vol;
		return 0;

	case WM8350_LOUT2_VOLUME:
		ucontrol->value.integer.value[0] = out2->left_vol;
		ucontrol->value.integer.value[1] = out2->right_vol;
		return 0;

	default:
		break;
	}

	return FUNC1(kcontrol, ucontrol);
}