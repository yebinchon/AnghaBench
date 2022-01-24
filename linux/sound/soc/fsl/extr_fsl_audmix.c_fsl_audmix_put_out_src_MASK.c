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
typedef  unsigned int u32 ;
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
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FSL_AUDMIX_CTR_OUTSRC_MASK ; 
 unsigned int FSL_AUDMIX_CTR_OUTSRC_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC4 (struct snd_soc_component*,unsigned int*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** prms ; 
 struct snd_soc_component* FUNC5 (struct snd_kcontrol*) ; 
 struct fsl_audmix* FUNC6 (struct snd_soc_component*) ; 
 int FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 unsigned int FUNC9 (struct soc_enum*,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct snd_kcontrol *kcontrol,
				  struct snd_ctl_elem_value *ucontrol)
{
	struct snd_soc_component *comp = FUNC5(kcontrol);
	struct fsl_audmix *priv = FUNC6(comp);
	struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;
	unsigned int *item = ucontrol->value.enumerated.item;
	u32 out_src, mix_clk;
	unsigned int reg_val, val, mask = 0, ctr = 0;
	int ret = 0;

	/* Get current state */
	ret = FUNC7(comp, FSL_AUDMIX_CTR, &reg_val);
	if (ret)
		return ret;

	/* "From" state */
	out_src = ((reg_val & FSL_AUDMIX_CTR_OUTSRC_MASK)
			>> FSL_AUDMIX_CTR_OUTSRC_SHIFT);
	mix_clk = ((reg_val & FSL_AUDMIX_CTR_MIXCLK_MASK)
			>> FSL_AUDMIX_CTR_MIXCLK_SHIFT);

	/* "To" state */
	val = FUNC9(e, item[0]);

	FUNC2(comp->dev, "TDMs=x%08x, val=x%08x\n", priv->tdms, val);

	/* Check if state is changing ... */
	if (out_src == val)
		return 0;
	/**
	 * Ensure the current selected mixer clock is available
	 * for configuration propagation
	 */
	if (!(priv->tdms & FUNC0(mix_clk))) {
		FUNC3(comp->dev,
			"Started TDM%d needed for config propagation!\n",
			mix_clk + 1);
		return -EINVAL;
	}

	/* Check state transition constraints */
	ret = FUNC4(comp, &mask, &ctr, prms[out_src][val]);
	if (ret)
		return ret;

	/* Complete transition to new state */
	mask |= FSL_AUDMIX_CTR_OUTSRC_MASK;
	ctr  |= FUNC1(val);

	return FUNC8(comp, FSL_AUDMIX_CTR, mask, ctr);
}