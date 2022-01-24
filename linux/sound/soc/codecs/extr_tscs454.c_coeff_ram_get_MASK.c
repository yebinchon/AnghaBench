#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mutex {int dummy; } ;
struct TYPE_10__ {struct mutex lock; int /*<<< orphan*/ * cache; } ;
struct TYPE_8__ {struct mutex lock; int /*<<< orphan*/ * cache; } ;
struct TYPE_7__ {struct mutex lock; int /*<<< orphan*/ * cache; } ;
struct tscs454 {TYPE_4__ sub_ram; TYPE_2__ spk_ram; TYPE_1__ dac_ram; } ;
struct soc_bytes_ext {int /*<<< orphan*/  max; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct snd_kcontrol {TYPE_3__ id; scalar_t__ private_value; } ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
struct TYPE_12__ {TYPE_5__ bytes; } ;
struct snd_ctl_elem_value {TYPE_6__ value; } ;
struct coeff_ram_ctl {size_t addr; struct soc_bytes_ext bytes_ext; } ;

/* Variables and functions */
 size_t COEFF_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 struct tscs454* FUNC3 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC4 (struct snd_kcontrol*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component =
		FUNC4(kcontrol);
	struct tscs454 *tscs454 = FUNC3(component);
	struct coeff_ram_ctl *ctl =
		(struct coeff_ram_ctl *)kcontrol->private_value;
	struct soc_bytes_ext *params = &ctl->bytes_ext;
	u8 *coeff_ram;
	struct mutex *coeff_ram_lock;

	if (FUNC5(kcontrol->id.name, "DAC")) {
		coeff_ram = tscs454->dac_ram.cache;
		coeff_ram_lock = &tscs454->dac_ram.lock;
	} else if (FUNC5(kcontrol->id.name, "Speaker")) {
		coeff_ram = tscs454->spk_ram.cache;
		coeff_ram_lock = &tscs454->spk_ram.lock;
	} else if (FUNC5(kcontrol->id.name, "Sub")) {
		coeff_ram = tscs454->sub_ram.cache;
		coeff_ram_lock = &tscs454->sub_ram.lock;
	} else {
		return -EINVAL;
	}

	FUNC1(coeff_ram_lock);

	FUNC0(ucontrol->value.bytes.data,
		&coeff_ram[ctl->addr * COEFF_SIZE], params->max);

	FUNC2(coeff_ram_lock);

	return 0;
}