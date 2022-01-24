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
struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct adau1373_dai {unsigned int sysclk; int enable_src; } ;
struct adau1373 {int /*<<< orphan*/  regmap; struct adau1373_dai* dais; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 unsigned int ADAU1373_BCLKDIV_64 ; 
 int ADAU1373_BCLKDIV_BCLK_MASK ; 
 int ADAU1373_BCLKDIV_SR_MASK ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 unsigned int ADAU1373_DAI_WLEN_16 ; 
 unsigned int ADAU1373_DAI_WLEN_20 ; 
 unsigned int ADAU1373_DAI_WLEN_24 ; 
 unsigned int ADAU1373_DAI_WLEN_32 ; 
 int ADAU1373_DAI_WLEN_MASK ; 
 int EINVAL ; 
 unsigned int FUNC2 (struct snd_pcm_hw_params*) ; 
 int FUNC3 (struct snd_pcm_hw_params*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct adau1373* FUNC5 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC6(struct snd_pcm_substream *substream,
	struct snd_pcm_hw_params *params, struct snd_soc_dai *dai)
{
	struct snd_soc_component *component = dai->component;
	struct adau1373 *adau1373 = FUNC5(component);
	struct adau1373_dai *adau1373_dai = &adau1373->dais[dai->id];
	unsigned int div;
	unsigned int freq;
	unsigned int ctrl;

	freq = adau1373_dai->sysclk;

	if (freq % FUNC2(params) != 0)
		return -EINVAL;

	switch (freq / FUNC2(params)) {
	case 1024: /* sysclk / 256 */
		div = 0;
		break;
	case 1536: /* 2/3 sysclk / 256 */
		div = 1;
		break;
	case 2048: /* 1/2 sysclk / 256 */
		div = 2;
		break;
	case 3072: /* 1/3 sysclk / 256 */
		div = 3;
		break;
	case 4096: /* 1/4 sysclk / 256 */
		div = 4;
		break;
	case 6144: /* 1/6 sysclk / 256 */
		div = 5;
		break;
	case 5632: /* 2/11 sysclk / 256 */
		div = 6;
		break;
	default:
		return -EINVAL;
	}

	adau1373_dai->enable_src = (div != 0);

	FUNC4(adau1373->regmap, FUNC0(dai->id),
		ADAU1373_BCLKDIV_SR_MASK | ADAU1373_BCLKDIV_BCLK_MASK,
		(div << 2) | ADAU1373_BCLKDIV_64);

	switch (FUNC3(params)) {
	case 16:
		ctrl = ADAU1373_DAI_WLEN_16;
		break;
	case 20:
		ctrl = ADAU1373_DAI_WLEN_20;
		break;
	case 24:
		ctrl = ADAU1373_DAI_WLEN_24;
		break;
	case 32:
		ctrl = ADAU1373_DAI_WLEN_32;
		break;
	default:
		return -EINVAL;
	}

	return FUNC4(adau1373->regmap, FUNC1(dai->id),
			ADAU1373_DAI_WLEN_MASK, ctrl);
}