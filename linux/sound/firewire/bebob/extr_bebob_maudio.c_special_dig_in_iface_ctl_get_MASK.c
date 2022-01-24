#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct special_params {int dig_in_fmt; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_bebob {int /*<<< orphan*/  mutex; TYPE_3__* unit; struct special_params* maudio_special_quirk; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,int,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct snd_bebob* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kctl,
					struct snd_ctl_elem_value *uval)
{
	struct snd_bebob *bebob = FUNC4(kctl);
	struct special_params *params = bebob->maudio_special_quirk;
	unsigned int dig_in_iface;
	int err, val;

	FUNC2(&bebob->mutex);

	err = FUNC0(bebob->unit, 0x00, 0x04,
				     &dig_in_iface);
	if (err < 0) {
		FUNC1(&bebob->unit->device,
			"fail to get digital input interface: %d\n", err);
		goto end;
	}

	/* encoded id for user value */
	val = (params->dig_in_fmt << 1) | (dig_in_iface & 0x01);

	/* for ADAT Optical */
	if (val > 2)
		val = 2;

	uval->value.enumerated.item[0] = val;
end:
	FUNC3(&bebob->mutex);
	return err;
}