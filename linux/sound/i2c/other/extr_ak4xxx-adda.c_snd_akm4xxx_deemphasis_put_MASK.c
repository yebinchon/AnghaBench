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
 unsigned char FUNC3 (struct snd_akm4xxx*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_akm4xxx*,int,int,unsigned char) ; 
 struct snd_akm4xxx* FUNC5 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
				      struct snd_ctl_elem_value *ucontrol)
{
	struct snd_akm4xxx *ak = FUNC5(kcontrol);
	int chip = FUNC1(kcontrol->private_value);
	int addr = FUNC0(kcontrol->private_value);
	int shift = FUNC2(kcontrol->private_value);
	unsigned char nval = ucontrol->value.enumerated.item[0] & 3;
	int change;
	
	nval = (nval << shift) |
		(FUNC3(ak, chip, addr) & ~(3 << shift));
	change = FUNC3(ak, chip, addr) != nval;
	if (change)
		FUNC4(ak, chip, addr, nval);
	return change;
}