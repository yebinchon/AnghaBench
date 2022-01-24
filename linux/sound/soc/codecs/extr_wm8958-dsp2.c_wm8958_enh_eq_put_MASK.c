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
struct wm8994_priv {int* enh_eq_ena; scalar_t__* hpf2_ena; scalar_t__* hpf1_ena; scalar_t__* vss_ena; scalar_t__* mbc_ena; int /*<<< orphan*/  enh_eq; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 struct wm8994_priv* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (struct snd_kcontrol*) ; 
 scalar_t__ FUNC3 (struct wm8994_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int,int) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
			  struct snd_ctl_elem_value *ucontrol)
{
	int eq = kcontrol->private_value;
	struct snd_soc_component *component = FUNC2(kcontrol);
	struct wm8994_priv *wm8994 = FUNC1(component);

	if (wm8994->enh_eq_ena[eq] == ucontrol->value.integer.value[0])
		return 0;

	if (ucontrol->value.integer.value[0] > 1)
		return -EINVAL;

	if (!wm8994->enh_eq)
		return -ENODEV;

	if (FUNC3(wm8994, eq)) {
		FUNC0(component->dev, "DSP2 active on %d already\n", eq);
		return -EBUSY;
	}

	if (wm8994->mbc_ena[eq] || wm8994->vss_ena[eq] ||
	    wm8994->hpf1_ena[eq] || wm8994->hpf2_ena[eq])
		return -EBUSY;

	wm8994->enh_eq_ena[eq] = ucontrol->value.integer.value[0];

	FUNC4(component, eq, ucontrol->value.integer.value[0]);

	return 0;
}