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
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_2__ bytes; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct arizona {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  s16 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct arizona* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 
 struct snd_soc_component* FUNC5 (struct snd_kcontrol*) ; 

int FUNC6(struct snd_kcontrol *kcontrol,
			   struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC5(kcontrol);
	struct arizona *arizona = FUNC3(component->dev->parent);
	__be16 *data = (__be16 *)ucontrol->value.bytes.data;
	s16 val = FUNC1(*data);

	if (FUNC0(val) >= 4096) {
		FUNC2(arizona->dev, "Rejecting unstable LHPF coefficients\n");
		return -EINVAL;
	}

	return FUNC4(kcontrol, ucontrol);
}