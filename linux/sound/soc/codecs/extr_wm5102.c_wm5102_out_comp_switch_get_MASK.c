#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_component {TYPE_1__* dev; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/ * value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct arizona {int /*<<< orphan*/  dac_comp_lock; int /*<<< orphan*/  dac_comp_enabled; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 struct arizona* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct snd_soc_component* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
				      struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC3(kcontrol);
	struct arizona *arizona = FUNC0(component->dev->parent);

	FUNC1(&arizona->dac_comp_lock);
	ucontrol->value.integer.value[0] = arizona->dac_comp_enabled;
	FUNC2(&arizona->dac_comp_lock);

	return 0;
}