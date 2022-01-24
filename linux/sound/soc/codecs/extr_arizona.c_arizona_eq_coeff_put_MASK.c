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
struct soc_bytes {int num_regs; int /*<<< orphan*/  base; } ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
struct TYPE_6__ {TYPE_2__ bytes; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct arizona {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 unsigned int ARIZONA_EQ1_B1_MODE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct arizona* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct snd_soc_component* FUNC9 (struct snd_kcontrol*) ; 

int FUNC10(struct snd_kcontrol *kcontrol,
			 struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *component = FUNC9(kcontrol);
	struct arizona *arizona = FUNC3(component->dev->parent);
	struct soc_bytes *params = (void *)kcontrol->private_value;
	unsigned int val;
	__be16 *data;
	int len;
	int ret;

	len = params->num_regs * FUNC6(arizona->regmap);

	data = FUNC5(ucontrol->value.bytes.data, len, GFP_KERNEL | GFP_DMA);
	if (!data)
		return -ENOMEM;

	data[0] &= FUNC1(ARIZONA_EQ1_B1_MODE);

	if (FUNC0(!!data[0], data[1], data[2]) ||
	    FUNC0(true, data[4], data[5]) ||
	    FUNC0(true, data[8], data[9]) ||
	    FUNC0(true, data[12], data[13]) ||
	    FUNC0(false, data[16], data[17])) {
		FUNC2(arizona->dev, "Rejecting unstable EQ coefficients\n");
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC8(arizona->regmap, params->base, &val);
	if (ret != 0)
		goto out;

	val &= ~ARIZONA_EQ1_B1_MODE;
	data[0] |= FUNC1(val);

	ret = FUNC7(arizona->regmap, params->base, data, len);

out:
	FUNC4(data);
	return ret;
}