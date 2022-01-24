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
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct adau {unsigned int pll_freq; int /*<<< orphan*/  pll_regs; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAU17X1_PLL_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adau* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_dai *dai, int pll_id,
	int source, unsigned int freq_in, unsigned int freq_out)
{
	struct snd_soc_component *component = dai->component;
	struct adau *adau = FUNC3(component);
	int ret;

	if (freq_in < 8000000 || freq_in > 27000000)
		return -EINVAL;

	ret = FUNC1(freq_in, freq_out, adau->pll_regs);
	if (ret < 0)
		return ret;

	/* The PLL register is 6 bytes long and can only be written at once. */
	ret = FUNC2(adau->regmap, ADAU17X1_PLL_CONTROL,
			adau->pll_regs, FUNC0(adau->pll_regs));
	if (ret)
		return ret;

	adau->pll_freq = freq_out;

	return 0;
}