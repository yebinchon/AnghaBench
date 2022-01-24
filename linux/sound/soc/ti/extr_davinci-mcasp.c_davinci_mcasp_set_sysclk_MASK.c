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
struct davinci_mcasp {unsigned int sysclk_freq; int /*<<< orphan*/  dev; int /*<<< orphan*/  pdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHCLKRE ; 
 int /*<<< orphan*/  AHCLKXE ; 
 int /*<<< orphan*/  DAVINCI_MCASP_AHCLKRCTL_REG ; 
 int /*<<< orphan*/  DAVINCI_MCASP_AHCLKXCTL_REG ; 
 int /*<<< orphan*/  PIN_BIT_AHCLKX ; 
 int SND_SOC_CLOCK_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct davinci_mcasp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_mcasp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct davinci_mcasp* FUNC6 (struct snd_soc_dai*) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_dai *dai, int clk_id,
				    unsigned int freq, int dir)
{
	struct davinci_mcasp *mcasp = FUNC6(dai);

	FUNC3(mcasp->dev);
	if (dir == SND_SOC_CLOCK_OUT) {
		FUNC2(mcasp, DAVINCI_MCASP_AHCLKXCTL_REG, AHCLKXE);
		FUNC2(mcasp, DAVINCI_MCASP_AHCLKRCTL_REG, AHCLKRE);
		FUNC5(PIN_BIT_AHCLKX, &mcasp->pdir);
	} else {
		FUNC1(mcasp, DAVINCI_MCASP_AHCLKXCTL_REG, AHCLKXE);
		FUNC1(mcasp, DAVINCI_MCASP_AHCLKRCTL_REG, AHCLKRE);
		FUNC0(PIN_BIT_AHCLKX, &mcasp->pdir);
	}

	mcasp->sysclk_freq = freq;

	FUNC4(mcasp->dev);
	return 0;
}