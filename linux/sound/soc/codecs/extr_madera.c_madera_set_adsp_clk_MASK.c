#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wm_adsp {int num; int /*<<< orphan*/  base; int /*<<< orphan*/  regmap; } ;
struct madera_priv {unsigned int* adsp_rate_cache; struct madera* madera; struct wm_adsp* adsp; } ;
struct madera {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int MADERA_DSP_RATE_MASK ; 
 unsigned int MADERA_DSP_RATE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct madera_priv*) ; 
 int FUNC3 (struct madera_priv*,struct wm_adsp*,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

int FUNC5(struct madera_priv *priv, int dsp_num,
			unsigned int freq)
{
	struct wm_adsp *dsp = &priv->adsp[dsp_num];
	struct madera *madera = priv->madera;
	unsigned int cur, new;
	int ret;

	/*
	 * This is called at a higher DAPM priority than the mux widgets so
	 * the muxes are still off at this point and it's safe to change
	 * the rate domain control.
	 * Also called at a lower DAPM priority than the domain group widgets
	 * so locking the reads of adsp_rate_cache is not necessary as we know
	 * changes are locked out by the domain_group_ref reference count.
	 */

	ret = FUNC4(dsp->regmap,  dsp->base, &cur);
	if (ret) {
		FUNC1(madera->dev,
			"Failed to read current DSP rate: %d\n", ret);
		return ret;
	}

	cur &= MADERA_DSP_RATE_MASK;

	new = priv->adsp_rate_cache[dsp->num - 1] << MADERA_DSP_RATE_SHIFT;

	if (new == cur) {
		FUNC0(madera->dev, "DSP rate not changed\n");
		return FUNC3(priv, dsp, freq);
	} else {
		FUNC0(madera->dev, "DSP rate changed\n");

		/* The write must be guarded by a number of SYSCLK cycles */
		FUNC2(priv);
		ret = FUNC3(priv, dsp, freq);
		FUNC2(priv);
		return ret;
	}
}