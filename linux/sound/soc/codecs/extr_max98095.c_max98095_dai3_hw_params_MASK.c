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
typedef  int /*<<< orphan*/  u8 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct max98095_priv {scalar_t__ sysclk; struct max98095_cdata* dai; } ;
struct max98095_cdata {unsigned int rate; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M98095_03B_DAI3_CLKMODE ; 
 int /*<<< orphan*/  M98095_03C_DAI3_CLKCFG_HI ; 
 int /*<<< orphan*/  M98095_03D_DAI3_CLKCFG_LO ; 
 int /*<<< orphan*/  M98095_03E_DAI3_FORMAT ; 
 int /*<<< orphan*/  M98095_042_DAI3_FILTERS ; 
 int /*<<< orphan*/  M98095_CLKMODE_MASK ; 
 int /*<<< orphan*/  M98095_DAI_DHF ; 
 int M98095_DAI_MAS ; 
 int /*<<< orphan*/  M98095_DAI_WS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,unsigned long long) ; 
 unsigned int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 scalar_t__ FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 
 struct max98095_priv* FUNC5 (struct snd_soc_component*) ; 
 int FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static int FUNC9(struct snd_pcm_substream *substream,
				   struct snd_pcm_hw_params *params,
				   struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct max98095_priv *max98095 = FUNC5(component);
	struct max98095_cdata *cdata;
	unsigned long long ni;
	unsigned int rate;
	u8 regval;

	cdata = &max98095->dai[2];

	rate = FUNC2(params);

	switch (FUNC3(params)) {
	case 16:
		FUNC7(component, M98095_03E_DAI3_FORMAT,
			M98095_DAI_WS, 0);
		break;
	case 24:
		FUNC7(component, M98095_03E_DAI3_FORMAT,
			M98095_DAI_WS, M98095_DAI_WS);
		break;
	default:
		return -EINVAL;
	}

	if (FUNC4(rate, &regval))
		return -EINVAL;

	FUNC7(component, M98095_03B_DAI3_CLKMODE,
		M98095_CLKMODE_MASK, regval);
	cdata->rate = rate;

	/* Configure NI when operating as master */
	if (FUNC6(component, M98095_03E_DAI3_FORMAT) & M98095_DAI_MAS) {
		if (max98095->sysclk == 0) {
			FUNC0(component->dev, "Invalid system clock frequency\n");
			return -EINVAL;
		}
		ni = 65536ULL * (rate < 50000 ? 96ULL : 48ULL)
				* (unsigned long long int)rate;
		FUNC1(ni, (unsigned long long int)max98095->sysclk);
		FUNC8(component, M98095_03C_DAI3_CLKCFG_HI,
			(ni >> 8) & 0x7F);
		FUNC8(component, M98095_03D_DAI3_CLKCFG_LO,
			ni & 0xFF);
	}

	/* Update sample rate mode */
	if (rate < 50000)
		FUNC7(component, M98095_042_DAI3_FILTERS,
			M98095_DAI_DHF, 0);
	else
		FUNC7(component, M98095_042_DAI3_FILTERS,
			M98095_DAI_DHF, M98095_DAI_DHF);

	return 0;
}