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
typedef  int /*<<< orphan*/  u16 ;
struct soc_bytes_ext {int max; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct nau8810 {int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  reg_val ;

/* Variables and functions */
 int NAU8810_REG_EQ1 ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int*) ; 
 struct nau8810* FUNC3 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC4 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC5(struct snd_kcontrol *kcontrol,
	struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC4(kcontrol);
	struct nau8810 *nau8810 = FUNC3(component);
	struct soc_bytes_ext *params = (void *)kcontrol->private_value;
	int i, reg, reg_val;
	u16 *val;

	val = (u16 *)ucontrol->value.bytes.data;
	reg = NAU8810_REG_EQ1;
	for (i = 0; i < params->max / sizeof(u16); i++) {
		FUNC2(nau8810->regmap, reg + i, &reg_val);
		/* conversion of 16-bit integers between native CPU format
		 * and big endian format
		 */
		reg_val = FUNC0(reg_val);
		FUNC1(val + i, &reg_val, sizeof(reg_val));
	}

	return 0;
}