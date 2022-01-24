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
struct tas {int acr; int /*<<< orphan*/  mtx; scalar_t__ hw_enabled; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 int TAS_ACR_B_MONAUREAL ; 
 int TAS_ACR_B_MON_SEL_RIGHT ; 
 int TAS_ACR_INPUT_B ; 
 int /*<<< orphan*/  TAS_REG_ACR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tas* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (struct tas*,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct tas *tas = FUNC2(kcontrol);
	int oldacr;

	if (ucontrol->value.enumerated.item[0] > 1)
		return -EINVAL;
	FUNC0(&tas->mtx);
	oldacr = tas->acr;

	/*
	 * Despite what the data sheet says in one place, the
	 * TAS_ACR_B_MONAUREAL bit forces mono output even when
	 * input A (line in) is selected.
	 */
	tas->acr &= ~(TAS_ACR_INPUT_B | TAS_ACR_B_MONAUREAL);
	if (ucontrol->value.enumerated.item[0])
		tas->acr |= TAS_ACR_INPUT_B | TAS_ACR_B_MONAUREAL |
		      TAS_ACR_B_MON_SEL_RIGHT;
	if (oldacr == tas->acr) {
		FUNC1(&tas->mtx);
		return 0;
	}
	if (tas->hw_enabled)
		FUNC3(tas, TAS_REG_ACR, 1, &tas->acr);
	FUNC1(&tas->mtx);
	return 1;
}