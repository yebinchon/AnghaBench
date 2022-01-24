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
struct snd_trident {unsigned char ac97_ctrl; int /*<<< orphan*/  reg_lock; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  NX_ACR0_AC97_COM_STAT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_trident*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 struct snd_trident* FUNC3 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
					struct snd_ctl_elem_value *ucontrol)
{
	struct snd_trident *trident = FUNC3(kcontrol);
	unsigned char val;
	int change = 0;

	FUNC4(&trident->reg_lock);
	val = trident->ac97_ctrl = FUNC1(FUNC0(trident, NX_ACR0_AC97_COM_STAT));
	val &= ~(1 << kcontrol->private_value);
	if (ucontrol->value.integer.value[0])
		val |= 1 << kcontrol->private_value;
	change = val != trident->ac97_ctrl;
	trident->ac97_ctrl = val;
	FUNC2(trident->ac97_ctrl = val, FUNC0(trident, NX_ACR0_AC97_COM_STAT));
	FUNC5(&trident->reg_lock);
	return change;
}