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
struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct mop500_ab8500_drvdata {unsigned int mclk_sel; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MCLK_ULPCLK ; 
 struct snd_soc_card* FUNC0 (struct snd_kcontrol*) ; 
 struct mop500_ab8500_drvdata* FUNC1 (struct snd_soc_card*) ; 

__attribute__((used)) static int FUNC2(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_card *card = FUNC0(kcontrol);
	struct mop500_ab8500_drvdata *drvdata =
				FUNC1(card);
	unsigned int val = ucontrol->value.enumerated.item[0];

	if (val > (unsigned int)MCLK_ULPCLK)
		return -EINVAL;
	if (drvdata->mclk_sel == val)
		return 0;

	drvdata->mclk_sel = val;

	return 1;
}