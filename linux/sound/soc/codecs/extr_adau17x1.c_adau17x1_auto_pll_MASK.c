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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct adau {int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAU17X1_PLL ; 
 int /*<<< orphan*/  ADAU17X1_PLL_SRC_MCLK ; 
 int EINVAL ; 
 int FUNC0 (struct snd_soc_dai*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct snd_pcm_hw_params*) ; 
 struct adau* FUNC3 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai,
	struct snd_pcm_hw_params *params)
{
	struct adau *adau = FUNC3(dai);
	unsigned int pll_rate;

	switch (FUNC2(params)) {
	case 48000:
	case 8000:
	case 12000:
	case 16000:
	case 24000:
	case 32000:
	case 96000:
		pll_rate = 48000 * 1024;
		break;
	case 44100:
	case 7350:
	case 11025:
	case 14700:
	case 22050:
	case 29400:
	case 88200:
		pll_rate = 44100 * 1024;
		break;
	default:
		return -EINVAL;
	}

	return FUNC0(dai, ADAU17X1_PLL, ADAU17X1_PLL_SRC_MCLK,
		FUNC1(adau->mclk), pll_rate);
}