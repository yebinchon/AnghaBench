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
struct soc_enum {unsigned int items; unsigned int shift_l; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_4__ {unsigned int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct cs43130_private {int dev_id; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CS43131_CHIP_ID 129 
#define  CS43198_CHIP_ID 128 
 int EINVAL ; 
 int /*<<< orphan*/  pcm_ch_dis_seq ; 
 int /*<<< orphan*/  pcm_ch_en_seq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cs43130_private* FUNC2 (struct snd_soc_component*) ; 
 unsigned int FUNC3 (struct soc_enum*,unsigned int) ; 
 struct snd_soc_component* FUNC4 (struct snd_kcontrol*) ; 
 int FUNC5 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
			      struct snd_ctl_elem_value *ucontrol)
{
	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
	unsigned int *item = ucontrol->value.enumerated.item;
	struct snd_soc_component *component = FUNC4(kcontrol);
	struct cs43130_private *cs43130 = FUNC2(component);
	unsigned int val;

	if (item[0] >= e->items)
		return -EINVAL;
	val = FUNC3(e, item[0]) << e->shift_l;

	switch (cs43130->dev_id) {
	case CS43131_CHIP_ID:
	case CS43198_CHIP_ID:
		if (val >= 2)
			FUNC1(cs43130->regmap, pcm_ch_en_seq,
					       FUNC0(pcm_ch_en_seq));
		else
			FUNC1(cs43130->regmap, pcm_ch_dis_seq,
					       FUNC0(pcm_ch_dis_seq));
		break;
	}

	return FUNC5(kcontrol, ucontrol);
}