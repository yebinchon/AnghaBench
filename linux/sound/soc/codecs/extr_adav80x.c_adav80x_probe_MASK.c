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
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct adav80x {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAV80X_DAC_CTRL3 ; 
 int /*<<< orphan*/  ADAV80X_PLL_OUTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct snd_soc_dapm_context* FUNC1 (struct snd_soc_component*) ; 
 struct adav80x* FUNC2 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_dapm_context*,char*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC1(component);
	struct adav80x *adav80x = FUNC2(component);

	/* Force PLLs on for SYSCLK output */
	FUNC3(dapm, "PLL1");
	FUNC3(dapm, "PLL2");

	/* Power down S/PDIF receiver, since it is currently not supported */
	FUNC0(adav80x->regmap, ADAV80X_PLL_OUTE, 0x20);
	/* Disable DAC zero flag */
	FUNC0(adav80x->regmap, ADAV80X_DAC_CTRL3, 0x6);

	return 0;
}