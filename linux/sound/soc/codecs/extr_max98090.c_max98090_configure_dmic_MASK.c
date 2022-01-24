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
struct max98090_priv {int /*<<< orphan*/  regmap; } ;
struct TYPE_4__ {TYPE_1__* settings; } ;
struct TYPE_3__ {int freq; int* comp; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int M98090_DMIC_COMP_MASK ; 
 int M98090_DMIC_COMP_SHIFT ; 
 int M98090_DMIC_FREQ_MASK ; 
 int M98090_DMIC_FREQ_SHIFT ; 
 int M98090_MICCLK_MASK ; 
 int M98090_MICCLK_SHIFT ; 
 int /*<<< orphan*/  M98090_REG_DIGITAL_MIC_CONFIG ; 
 int /*<<< orphan*/  M98090_REG_DIGITAL_MIC_ENABLE ; 
 int* comp_lrclk_rates ; 
 TYPE_2__* dmic_table ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct max98090_priv *max98090,
				   int target_dmic_clk, int pclk, int fs)
{
	int micclk_index;
	int pclk_index;
	int dmic_freq;
	int dmic_comp;
	int i;

	pclk_index = FUNC1(pclk);
	if (pclk_index < 0)
		return pclk_index;

	micclk_index = FUNC2(target_dmic_clk, pclk);

	for (i = 0; i < FUNC0(comp_lrclk_rates) - 1; i++) {
		if (fs <= (comp_lrclk_rates[i] + comp_lrclk_rates[i+1]) / 2)
			break;
	}

	dmic_freq = dmic_table[pclk_index].settings[micclk_index].freq;
	dmic_comp = dmic_table[pclk_index].settings[micclk_index].comp[i];

	FUNC3(max98090->regmap, M98090_REG_DIGITAL_MIC_ENABLE,
			   M98090_MICCLK_MASK,
			   micclk_index << M98090_MICCLK_SHIFT);

	FUNC3(max98090->regmap, M98090_REG_DIGITAL_MIC_CONFIG,
			   M98090_DMIC_COMP_MASK | M98090_DMIC_FREQ_MASK,
			   dmic_comp << M98090_DMIC_COMP_SHIFT |
			   dmic_freq << M98090_DMIC_FREQ_SHIFT);

	return 0;
}