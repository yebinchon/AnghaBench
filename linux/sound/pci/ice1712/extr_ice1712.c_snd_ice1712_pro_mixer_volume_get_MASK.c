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
struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {int* pro_volumes; int /*<<< orphan*/  reg_lock; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int FUNC0 (struct snd_kcontrol*,int /*<<< orphan*/ *) ; 
 struct snd_ice1712* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_ice1712 *ice = FUNC1(kcontrol);
	int priv_idx = FUNC0(kcontrol, &ucontrol->id) +
		kcontrol->private_value;

	FUNC2(&ice->reg_lock);
	ucontrol->value.integer.value[0] =
		(ice->pro_volumes[priv_idx] >> 0) & 127;
	ucontrol->value.integer.value[1] =
		(ice->pro_volumes[priv_idx] >> 16) & 127;
	FUNC3(&ice->reg_lock);
	return 0;
}