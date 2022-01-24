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
struct tscs42xx {int /*<<< orphan*/  coeff_ram_lock; int /*<<< orphan*/ * coeff_ram; } ;
struct soc_bytes_ext {int /*<<< orphan*/  max; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct coeff_ram_ctl {size_t addr; struct soc_bytes_ext bytes_ext; } ;

/* Variables and functions */
 size_t COEFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tscs42xx* FUNC3 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component =
		FUNC4(kcontrol);
	struct tscs42xx *tscs42xx = FUNC3(component);
	struct coeff_ram_ctl *ctl =
		(struct coeff_ram_ctl *)kcontrol->private_value;
	struct soc_bytes_ext *params = &ctl->bytes_ext;

	FUNC1(&tscs42xx->coeff_ram_lock);

	FUNC0(ucontrol->value.bytes.data,
		&tscs42xx->coeff_ram[ctl->addr * COEFF_SIZE], params->max);

	FUNC2(&tscs42xx->coeff_ram_lock);

	return 0;
}