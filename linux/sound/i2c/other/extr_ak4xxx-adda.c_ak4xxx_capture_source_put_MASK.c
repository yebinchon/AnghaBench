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
struct snd_kcontrol {int /*<<< orphan*/  private_value; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_akm4xxx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC4 (struct snd_akm4xxx*,int) ; 
 unsigned char FUNC5 (struct snd_akm4xxx*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_akm4xxx*,int,int,unsigned char) ; 
 struct snd_akm4xxx* FUNC7 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC8(struct snd_kcontrol *kcontrol,
				     struct snd_ctl_elem_value *ucontrol)
{
	struct snd_akm4xxx *ak = FUNC7(kcontrol);
	int mixer_ch = FUNC3(kcontrol->private_value);
	int chip = FUNC1(kcontrol->private_value);
	int addr = FUNC0(kcontrol->private_value);
	int mask = FUNC2(kcontrol->private_value);
	unsigned char oval, val;
	int num_names = FUNC4(ak, mixer_ch);

	if (ucontrol->value.enumerated.item[0] >= num_names)
		return -EINVAL;

	oval = FUNC5(ak, chip, addr);
	val = oval & ~mask;
	val |= ucontrol->value.enumerated.item[0] & mask;
	if (val != oval) {
		FUNC6(ak, chip, addr, val);
		return 1;
	}
	return 0;
}