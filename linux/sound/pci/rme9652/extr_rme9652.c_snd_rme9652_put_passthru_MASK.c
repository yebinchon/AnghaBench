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
struct snd_rme9652 {scalar_t__ passthru; int /*<<< orphan*/  lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct snd_rme9652*,unsigned int) ; 
 struct snd_rme9652* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_rme9652*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct snd_rme9652 *rme9652 = FUNC1(kcontrol);
	int change;
	unsigned int val;
	int err = 0;

	if (!FUNC2(rme9652))
		return -EBUSY;

	val = ucontrol->value.integer.value[0] & 1;
	FUNC3(&rme9652->lock);
	change = (ucontrol->value.integer.value[0] != rme9652->passthru);
	if (change)
		err = FUNC0(rme9652, val);
	FUNC4(&rme9652->lock);
	return err ? err : change;
}