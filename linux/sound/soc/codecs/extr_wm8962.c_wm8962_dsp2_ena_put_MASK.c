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
struct wm8962_priv {int dsp2_ena; int /*<<< orphan*/  dsp2_ena_lock; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int WM8962_DSP2_ENA ; 
 int /*<<< orphan*/  WM8962_DSP2_POWER_MANAGEMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wm8962_priv* FUNC2 (struct snd_soc_component*) ; 
 int FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct snd_soc_component* FUNC4 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC7(struct snd_kcontrol *kcontrol,
			       struct snd_ctl_elem_value *ucontrol)
{
	int shift = kcontrol->private_value;
	struct snd_soc_component *component = FUNC4(kcontrol);
	struct wm8962_priv *wm8962 = FUNC2(component);
	int old = wm8962->dsp2_ena;
	int ret = 0;
	int dsp2_running = FUNC3(component, WM8962_DSP2_POWER_MANAGEMENT) &
		WM8962_DSP2_ENA;

	FUNC0(&wm8962->dsp2_ena_lock);

	if (ucontrol->value.integer.value[0])
		wm8962->dsp2_ena |= 1 << shift;
	else
		wm8962->dsp2_ena &= ~(1 << shift);

	if (wm8962->dsp2_ena == old)
		goto out;

	ret = 1;

	if (dsp2_running) {
		if (wm8962->dsp2_ena)
			FUNC5(component, wm8962->dsp2_ena);
		else
			FUNC6(component);
	}

out:
	FUNC1(&wm8962->dsp2_ena_lock);

	return ret;
}