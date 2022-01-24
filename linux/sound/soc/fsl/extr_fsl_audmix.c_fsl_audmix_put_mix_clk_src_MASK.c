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
struct soc_enum {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct fsl_audmix {int tdms; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FSL_AUDMIX_CTR ; 
 unsigned int FSL_AUDMIX_CTR_MIXCLK_MASK ; 
 unsigned int FSL_AUDMIX_CTR_MIXCLK_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct snd_soc_component* FUNC3 (struct snd_kcontrol*) ; 
 struct fsl_audmix* FUNC4 (struct snd_soc_component*) ; 
 int FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int*) ; 
 unsigned int FUNC6 (struct soc_enum*,unsigned int) ; 
 int FUNC7 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ; 

__attribute__((used)) static int FUNC8(struct snd_kcontrol *kcontrol,
				      struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *comp = FUNC3(kcontrol);
	struct fsl_audmix *priv = FUNC4(comp);
	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
	unsigned int *item = ucontrol->value.enumerated.item;
	unsigned int reg_val, val, mix_clk;
	int ret = 0;

	/* Get current state */
	ret = FUNC5(comp, FSL_AUDMIX_CTR, &reg_val);
	if (ret)
		return ret;

	mix_clk = ((reg_val & FSL_AUDMIX_CTR_MIXCLK_MASK)
			>> FSL_AUDMIX_CTR_MIXCLK_SHIFT);
	val = FUNC6(e, item[0]);

	FUNC1(comp->dev, "TDMs=x%08x, val=x%08x\n", priv->tdms, val);

	/**
	 * Ensure the current selected mixer clock is available
	 * for configuration propagation
	 */
	if (!(priv->tdms & FUNC0(mix_clk))) {
		FUNC2(comp->dev,
			"Started TDM%d needed for config propagation!\n",
			mix_clk + 1);
		return -EINVAL;
	}

	if (!(priv->tdms & FUNC0(val))) {
		FUNC2(comp->dev,
			"The selected clock source has no TDM%d enabled!\n",
			val + 1);
		return -EINVAL;
	}

	return FUNC7(kcontrol, ucontrol);
}