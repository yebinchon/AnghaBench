#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* card; } ;
typedef  TYPE_4__ vortex_t ;
typedef  int /*<<< orphan*/  u16 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * value; } ;
struct TYPE_8__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_4__* FUNC1 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int
FUNC3(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
	vortex_t *vortex = FUNC1(kcontrol);
	int i, count = 0;
	u16 peaks[20];

	FUNC2(vortex, peaks, &count);
	if (count != 20) {
		FUNC0(vortex->card->dev,
			"peak count error 20 != %d\n", count);
		return -1;
	}
	for (i = 0; i < 20; i++)
		ucontrol->value.integer.value[i] = peaks[i];

	return 0;
}