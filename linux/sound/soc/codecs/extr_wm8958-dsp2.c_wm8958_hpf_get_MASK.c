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
struct wm8994_priv {int /*<<< orphan*/ * hpf2_ena; int /*<<< orphan*/ * hpf1_ena; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int /*<<< orphan*/ * value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;

/* Variables and functions */
 struct wm8994_priv* FUNC0 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC1 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
			  struct snd_ctl_elem_value *ucontrol)
{
	int hpf = kcontrol->private_value;
	struct snd_soc_component *component = FUNC1(kcontrol);
	struct wm8994_priv *wm8994 = FUNC0(component);

	if (hpf < 3)
		ucontrol->value.integer.value[0] = wm8994->hpf1_ena[hpf % 3];
	else
		ucontrol->value.integer.value[0] = wm8994->hpf2_ena[hpf % 3];

	return 0;
}