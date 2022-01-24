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
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ensoniq {unsigned int ctrl; unsigned int cssr; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL ; 
 unsigned int ES_1373_SPDIF_EN ; 
 unsigned int ES_1373_SPDIF_THRU ; 
 int /*<<< orphan*/  FUNC0 (struct ensoniq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 struct ensoniq* FUNC2 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct ensoniq *ensoniq = FUNC2(kcontrol);
	unsigned int nval1, nval2;
	int change;
	
	nval1 = ucontrol->value.integer.value[0] ? ES_1373_SPDIF_THRU : 0;
	nval2 = ucontrol->value.integer.value[0] ? ES_1373_SPDIF_EN : 0;
	FUNC3(&ensoniq->reg_lock);
	change = (ensoniq->ctrl & ES_1373_SPDIF_THRU) != nval1;
	ensoniq->ctrl &= ~ES_1373_SPDIF_THRU;
	ensoniq->ctrl |= nval1;
	ensoniq->cssr &= ~ES_1373_SPDIF_EN;
	ensoniq->cssr |= nval2;
	FUNC1(ensoniq->ctrl, FUNC0(ensoniq, CONTROL));
	FUNC1(ensoniq->cssr, FUNC0(ensoniq, STATUS));
	FUNC4(&ensoniq->reg_lock);
	return change;
}