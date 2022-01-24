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
struct tse850_priv {unsigned int loop1_cache; int /*<<< orphan*/  loop1; } ;
struct soc_enum {unsigned int items; } ;
struct snd_soc_dapm_context {struct snd_soc_card* card; } ;
struct snd_soc_card {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_4__ {unsigned int* item; } ;
struct TYPE_3__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 struct tse850_priv* FUNC1 (struct snd_soc_card*) ; 
 struct snd_soc_dapm_context* FUNC2 (struct snd_kcontrol*) ; 
 int FUNC3 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kctrl,
			   struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_dapm_context *dapm = FUNC2(kctrl);
	struct snd_soc_card *card = dapm->card;
	struct tse850_priv *tse850 = FUNC1(card);
	struct soc_enum *e = (struct soc_enum *)kctrl->private_value;
	unsigned int val = ucontrol->value.enumerated.item[0];

	if (val >= e->items)
		return -EINVAL;

	FUNC0(tse850->loop1, val);
	tse850->loop1_cache = val;

	return FUNC3(kctrl, ucontrol);
}