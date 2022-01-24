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
struct uniphier_aio_sub {int /*<<< orphan*/  vol; } ;
struct uniphier_aio_chip {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int /*<<< orphan*/ * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 struct uniphier_aio_sub* FUNC0 (struct uniphier_aio_chip*,int) ; 
 struct uniphier_aio_chip* FUNC1 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC2 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC3(struct snd_kcontrol *kcontrol,
				struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *comp = FUNC2(kcontrol);
	struct uniphier_aio_chip *chip = FUNC1(comp);
	struct uniphier_aio_sub *sub;
	int oport_hw = kcontrol->private_value;

	sub = FUNC0(chip, oport_hw);
	if (!sub)
		return 0;

	ucontrol->value.integer.value[0] = sub->vol;

	return 0;
}