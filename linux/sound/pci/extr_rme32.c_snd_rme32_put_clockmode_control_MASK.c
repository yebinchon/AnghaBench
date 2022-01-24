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
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct rme32 {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct rme32* FUNC0 (struct snd_kcontrol*) ; 
 scalar_t__ FUNC1 (struct rme32*) ; 
 int /*<<< orphan*/  FUNC2 (struct rme32*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct rme32 *rme32 = FUNC0(kcontrol);
	unsigned int val;
	int change;

	val = ucontrol->value.enumerated.item[0] % 3;
	FUNC3(&rme32->lock);
	change = val != (unsigned int)FUNC1(rme32);
	FUNC2(rme32, val);
	FUNC4(&rme32->lock);
	return change;
}