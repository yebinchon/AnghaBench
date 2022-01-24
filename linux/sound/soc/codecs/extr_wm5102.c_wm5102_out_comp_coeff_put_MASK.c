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
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {TYPE_3__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct arizona {int /*<<< orphan*/  dac_comp_lock; int /*<<< orphan*/  dac_comp_coeff; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct arizona* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct snd_soc_component* FUNC5 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
				     struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC5(kcontrol);
	struct arizona *arizona = FUNC1(component->dev->parent);

	FUNC3(&arizona->dac_comp_lock);
	FUNC2(&arizona->dac_comp_coeff, ucontrol->value.bytes.data,
	       sizeof(arizona->dac_comp_coeff));
	arizona->dac_comp_coeff = FUNC0(arizona->dac_comp_coeff);
	FUNC4(&arizona->dac_comp_lock);

	return 0;
}