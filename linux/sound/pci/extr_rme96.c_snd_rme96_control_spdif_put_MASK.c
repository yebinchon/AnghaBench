#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  iec958; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct rme96 {scalar_t__ wcreg_spdif; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct rme96* FUNC0 (struct snd_kcontrol*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	struct rme96 *rme96 = FUNC0(kcontrol);
	int change;
	u32 val;
	
	val = FUNC1(&ucontrol->value.iec958);
	FUNC2(&rme96->lock);
	change = val != rme96->wcreg_spdif;
	rme96->wcreg_spdif = val;
	FUNC3(&rme96->lock);
	return change;
}