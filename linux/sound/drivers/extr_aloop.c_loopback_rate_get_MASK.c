#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t subdevice; size_t device; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct TYPE_6__ {int /*<<< orphan*/ * value; } ;
struct TYPE_7__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct loopback {int /*<<< orphan*/  cable_lock; TYPE_4__** setup; } ;
struct TYPE_8__ {int /*<<< orphan*/  rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct loopback* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
			     struct snd_ctl_elem_value *ucontrol)
{
	struct loopback *loopback = FUNC2(kcontrol);
	
	FUNC0(&loopback->cable_lock);
	ucontrol->value.integer.value[0] =
		loopback->setup[kcontrol->id.subdevice]
			       [kcontrol->id.device].rate;
	FUNC1(&loopback->cable_lock);
	return 0;
}