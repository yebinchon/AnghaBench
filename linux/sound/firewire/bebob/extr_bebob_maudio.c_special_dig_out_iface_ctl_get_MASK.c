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
struct special_params {int /*<<< orphan*/  dig_out_fmt; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_bebob {int /*<<< orphan*/  mutex; struct special_params* maudio_special_quirk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct snd_bebob* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kctl,
					 struct snd_ctl_elem_value *uval)
{
	struct snd_bebob *bebob = FUNC2(kctl);
	struct special_params *params = bebob->maudio_special_quirk;
	FUNC0(&bebob->mutex);
	uval->value.enumerated.item[0] = params->dig_out_fmt;
	FUNC1(&bebob->mutex);
	return 0;
}