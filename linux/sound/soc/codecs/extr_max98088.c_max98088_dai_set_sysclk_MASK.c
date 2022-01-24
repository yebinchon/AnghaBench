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
struct snd_soc_dai {int /*<<< orphan*/  dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct max98088_priv {unsigned int sysclk; int /*<<< orphan*/  mclk; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M98088_REG_10_SYS_CLK ; 
 int /*<<< orphan*/  M98088_REG_51_PWR_SYS ; 
 int M98088_SHDNRUN ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct max98088_priv* FUNC5 (struct snd_soc_component*) ; 
 int FUNC6 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_dai *dai,
                                  int clk_id, unsigned int freq, int dir)
{
       struct snd_soc_component *component = dai->component;
       struct max98088_priv *max98088 = FUNC5(component);

       /* Requested clock frequency is already setup */
       if (freq == max98088->sysclk)
               return 0;

	if (!FUNC0(max98088->mclk)) {
		freq = FUNC1(max98088->mclk, freq);
		FUNC2(max98088->mclk, freq);
	}

       /* Setup clocks for slave mode, and using the PLL
        * PSCLK = 0x01 (when master clk is 10MHz to 20MHz)
        *         0x02 (when master clk is 20MHz to 30MHz)..
        */
       if ((freq >= 10000000) && (freq < 20000000)) {
               FUNC8(component, M98088_REG_10_SYS_CLK, 0x10);
       } else if ((freq >= 20000000) && (freq < 30000000)) {
               FUNC8(component, M98088_REG_10_SYS_CLK, 0x20);
       } else {
               FUNC4(component->dev, "Invalid master clock frequency\n");
               return -EINVAL;
       }

       if (FUNC6(component, M98088_REG_51_PWR_SYS)  & M98088_SHDNRUN) {
               FUNC7(component, M98088_REG_51_PWR_SYS,
                       M98088_SHDNRUN, 0);
               FUNC7(component, M98088_REG_51_PWR_SYS,
                       M98088_SHDNRUN, M98088_SHDNRUN);
       }

       FUNC3(dai->dev, "Clock source is %d at %uHz\n", clk_id, freq);

       max98088->sysclk = freq;
       return 0;
}