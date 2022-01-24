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
struct sta32x_priv {int /*<<< orphan*/  coeff_lock; int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {unsigned int* data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ STA32X_B1CF1 ; 
 scalar_t__ STA32X_CFADDR2 ; 
 scalar_t__ STA32X_CFUD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 struct sta32x_priv* FUNC4 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC5 (struct snd_kcontrol*) ; 

__attribute__((used)) static int FUNC6(struct snd_kcontrol *kcontrol,
				  struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC5(kcontrol);
	struct sta32x_priv *sta32x = FUNC4(component);
	int numcoef = kcontrol->private_value >> 16;
	int index = kcontrol->private_value & 0xffff;
	unsigned int cfud, val;
	int i, ret = 0;

	FUNC0(&sta32x->coeff_lock);

	/* preserve reserved bits in STA32X_CFUD */
	FUNC2(sta32x->regmap, STA32X_CFUD, &cfud);
	cfud &= 0xf0;
	/*
	 * chip documentation does not say if the bits are self clearing,
	 * so do it explicitly
	 */
	FUNC3(sta32x->regmap, STA32X_CFUD, cfud);

	FUNC3(sta32x->regmap, STA32X_CFADDR2, index);
	if (numcoef == 1) {
		FUNC3(sta32x->regmap, STA32X_CFUD, cfud | 0x04);
	} else if (numcoef == 5) {
		FUNC3(sta32x->regmap, STA32X_CFUD, cfud | 0x08);
	} else {
		ret = -EINVAL;
		goto exit_unlock;
	}

	for (i = 0; i < 3 * numcoef; i++) {
		FUNC2(sta32x->regmap, STA32X_B1CF1 + i, &val);
		ucontrol->value.bytes.data[i] = val;
	}

exit_unlock:
	FUNC1(&sta32x->coeff_lock);

	return ret;
}