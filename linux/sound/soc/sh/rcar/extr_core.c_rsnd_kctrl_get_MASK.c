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
struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * value; } ;
struct TYPE_6__ {int /*<<< orphan*/ * item; } ;
struct TYPE_5__ {TYPE_1__ integer; TYPE_3__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct rsnd_kctrl_cfg {int size; int /*<<< orphan*/ * val; scalar_t__ texts; } ;

/* Variables and functions */
 struct rsnd_kctrl_cfg* FUNC0 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC1(struct snd_kcontrol *kctrl,
			  struct snd_ctl_elem_value *uc)
{
	struct rsnd_kctrl_cfg *cfg = FUNC0(kctrl);
	int i;

	for (i = 0; i < cfg->size; i++)
		if (cfg->texts)
			uc->value.enumerated.item[i] = cfg->val[i];
		else
			uc->value.integer.value[i] = cfg->val[i];

	return 0;
}