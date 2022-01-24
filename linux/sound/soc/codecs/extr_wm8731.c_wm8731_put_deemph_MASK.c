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
struct wm8731_priv {unsigned int deemph; int /*<<< orphan*/  lock; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct wm8731_priv* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
			     struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC3(kcontrol);
	struct wm8731_priv *wm8731 = FUNC2(component);
	unsigned int deemph = ucontrol->value.integer.value[0];
	int ret = 0;

	if (deemph > 1)
		return -EINVAL;

	FUNC0(&wm8731->lock);
	if (wm8731->deemph != deemph) {
		wm8731->deemph = deemph;

		FUNC4(component);

		ret = 1;
	}
	FUNC1(&wm8731->lock);

	return ret;
}