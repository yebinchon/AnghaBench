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
struct snd_soc_dapm_widget {int /*<<< orphan*/  dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct adau {int* pll_regs; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADAU17X1_CLOCK_CONTROL ; 
 int /*<<< orphan*/  ADAU17X1_CLOCK_CONTROL_CORECLK_SRC_PLL ; 
 int /*<<< orphan*/  ADAU17X1_PLL_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct adau* FUNC5 (struct snd_soc_component*) ; 
 struct snd_soc_component* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_dapm_widget *w,
	struct snd_kcontrol *kcontrol, int event)
{
	struct snd_soc_component *component = FUNC6(w->dapm);
	struct adau *adau = FUNC5(component);

	if (FUNC1(event)) {
		adau->pll_regs[5] = 1;
	} else {
		adau->pll_regs[5] = 0;
		/* Bypass the PLL when disabled, otherwise registers will become
		 * inaccessible. */
		FUNC4(adau->regmap, ADAU17X1_CLOCK_CONTROL,
			ADAU17X1_CLOCK_CONTROL_CORECLK_SRC_PLL, 0);
	}

	/* The PLL register is 6 bytes long and can only be written at once. */
	FUNC3(adau->regmap, ADAU17X1_PLL_CONTROL,
			adau->pll_regs, FUNC0(adau->pll_regs));

	if (FUNC1(event)) {
		FUNC2(5);
		FUNC4(adau->regmap, ADAU17X1_CLOCK_CONTROL,
			ADAU17X1_CLOCK_CONTROL_CORECLK_SRC_PLL,
			ADAU17X1_CLOCK_CONTROL_CORECLK_SRC_PLL);
	}

	return 0;
}