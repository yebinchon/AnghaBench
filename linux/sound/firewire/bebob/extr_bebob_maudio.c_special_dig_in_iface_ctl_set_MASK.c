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
struct special_params {scalar_t__ dig_in_fmt; int /*<<< orphan*/  clk_lock; int /*<<< orphan*/  dig_out_fmt; int /*<<< orphan*/  clk_src; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {unsigned int* item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_bebob {int /*<<< orphan*/  mutex; TYPE_3__* unit; struct special_params* maudio_special_quirk; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC1 (TYPE_3__*,int,int,unsigned int) ; 
 int FUNC2 (struct snd_bebob*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct snd_bebob* FUNC6 (struct snd_kcontrol*) ; 
 int /*<<< orphan*/  special_dig_in_iface_labels ; 
 int /*<<< orphan*/  FUNC7 (struct snd_bebob*) ; 

__attribute__((used)) static int FUNC8(struct snd_kcontrol *kctl,
					struct snd_ctl_elem_value *uval)
{
	struct snd_bebob *bebob = FUNC6(kctl);
	struct special_params *params = bebob->maudio_special_quirk;
	unsigned int id, dig_in_fmt, dig_in_iface;
	int err;

	id = uval->value.enumerated.item[0];
	if (id >= FUNC0(special_dig_in_iface_labels))
		return -EINVAL;

	/* decode user value */
	dig_in_fmt = (id >> 1) & 0x01;
	dig_in_iface = id & 0x01;

	FUNC4(&bebob->mutex);

	err = FUNC2(bebob,
					 params->clk_src,
					 dig_in_fmt,
					 params->dig_out_fmt,
					 params->clk_lock);
	if (err < 0)
		goto end;

	/* For ADAT, optical interface is only available. */
	if (params->dig_in_fmt > 0) {
		err = 1;
		goto end;
	}

	/* For S/PDIF, optical/coaxial interfaces are selectable. */
	err = FUNC1(bebob->unit, 0x00, 0x04, dig_in_iface);
	if (err < 0)
		FUNC3(&bebob->unit->device,
			"fail to set digital input interface: %d\n", err);
	err = 1;
end:
	FUNC7(bebob);
	FUNC5(&bebob->mutex);
	return err;
}