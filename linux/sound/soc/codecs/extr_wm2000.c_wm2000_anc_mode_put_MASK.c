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
struct wm2000_priv {unsigned int anc_active; int /*<<< orphan*/  lock; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 struct wm2000_priv* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct snd_soc_component* FUNC3 (struct snd_kcontrol*) ; 
 int FUNC4 (struct wm2000_priv*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
			       struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC3(kcontrol);
	struct wm2000_priv *wm2000 = FUNC0(component->dev);
	unsigned int anc_active = ucontrol->value.integer.value[0];
	int ret;

	if (anc_active > 1)
		return -EINVAL;

	FUNC1(&wm2000->lock);

	wm2000->anc_active = anc_active;

	ret = FUNC4(wm2000);

	FUNC2(&wm2000->lock);

	return ret;
}