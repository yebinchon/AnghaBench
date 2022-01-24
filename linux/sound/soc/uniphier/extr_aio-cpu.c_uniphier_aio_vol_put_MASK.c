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
struct uniphier_aio_sub {scalar_t__ vol; } ;
struct uniphier_aio_chip {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uniphier_aio_sub*,scalar_t__) ; 
 struct uniphier_aio_sub* FUNC1 (struct uniphier_aio_chip*,int) ; 
 struct uniphier_aio_chip* FUNC2 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC3 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC4(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *comp = FUNC3(kcontrol);
	struct uniphier_aio_chip *chip = FUNC2(comp);
	struct uniphier_aio_sub *sub;
	int oport_hw = kcontrol->private_value;

	sub = FUNC1(chip, oport_hw);
	if (!sub)
		return 0;

	if (sub->vol == ucontrol->value.integer.value[0])
		return 0;
	sub->vol = ucontrol->value.integer.value[0];

	FUNC0(sub, sub->vol);

	return 0;
}