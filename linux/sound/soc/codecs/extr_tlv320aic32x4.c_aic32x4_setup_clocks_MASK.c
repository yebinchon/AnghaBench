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
typedef  int u8 ;
typedef  int u16 ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct clk_bulk_data {char* id; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int AIC32X4_MAX_CODEC_CLKIN_FREQ ; 
 unsigned int AIC32X4_MAX_DOSR_FREQ ; 
 unsigned int AIC32X4_MIN_DOSR_FREQ ; 
 int /*<<< orphan*/  FUNC0 (struct clk_bulk_data*) ; 
 int FUNC1 (int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct clk_bulk_data*) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component,
				unsigned int sample_rate)
{
	u8 aosr;
	u16 dosr;
	u8 adc_resource_class, dac_resource_class;
	u8 madc, nadc, mdac, ndac, max_nadc, min_mdac, max_ndac;
	u8 dosr_increment;
	u16 max_dosr, min_dosr;
	unsigned long adc_clock_rate, dac_clock_rate;
	int ret;

	struct clk_bulk_data clocks[] = {
		{ .id = "pll" },
		{ .id = "nadc" },
		{ .id = "madc" },
		{ .id = "ndac" },
		{ .id = "mdac" },
		{ .id = "bdiv" },
	};
	ret = FUNC8(component->dev, FUNC0(clocks), clocks);
	if (ret)
		return ret;

	if (sample_rate <= 48000) {
		aosr = 128;
		adc_resource_class = 6;
		dac_resource_class = 8;
		dosr_increment = 8;
		FUNC4(component, 1, 1);
	} else if (sample_rate <= 96000) {
		aosr = 64;
		adc_resource_class = 6;
		dac_resource_class = 8;
		dosr_increment = 4;
		FUNC4(component, 1, 9);
	} else if (sample_rate == 192000) {
		aosr = 32;
		adc_resource_class = 3;
		dac_resource_class = 4;
		dosr_increment = 2;
		FUNC4(component, 13, 19);
	} else {
		FUNC7(component->dev, "Sampling rate not supported\n");
		return -EINVAL;
	}

	madc = FUNC1((32 * adc_resource_class), aosr);
	max_dosr = (AIC32X4_MAX_DOSR_FREQ / sample_rate / dosr_increment) *
			dosr_increment;
	min_dosr = (AIC32X4_MIN_DOSR_FREQ / sample_rate / dosr_increment) *
			dosr_increment;
	max_nadc = AIC32X4_MAX_CODEC_CLKIN_FREQ / (madc * aosr * sample_rate);

	for (nadc = max_nadc; nadc > 0; --nadc) {
		adc_clock_rate = nadc * madc * aosr * sample_rate;
		for (dosr = max_dosr; dosr >= min_dosr;
				dosr -= dosr_increment) {
			min_mdac = FUNC1((32 * dac_resource_class), dosr);
			max_ndac = AIC32X4_MAX_CODEC_CLKIN_FREQ /
					(min_mdac * dosr * sample_rate);
			for (mdac = min_mdac; mdac <= 128; ++mdac) {
				for (ndac = max_ndac; ndac > 0; --ndac) {
					dac_clock_rate = ndac * mdac * dosr *
							sample_rate;
					if (dac_clock_rate == adc_clock_rate) {
						if (FUNC5(clocks[0].clk, dac_clock_rate) == 0)
							continue;

						FUNC6(clocks[0].clk,
							dac_clock_rate);

						FUNC6(clocks[1].clk,
							sample_rate * aosr *
							madc);
						FUNC6(clocks[2].clk,
							sample_rate * aosr);
						FUNC2(component,
							aosr);

						FUNC6(clocks[3].clk,
							sample_rate * dosr *
							mdac);
						FUNC6(clocks[4].clk,
							sample_rate * dosr);
						FUNC3(component,
							dosr);

						FUNC6(clocks[5].clk,
							sample_rate * 32);
						return 0;
					}
				}
			}
		}
	}

	FUNC7(component->dev,
		"Could not set clocks to support sample rate.\n");
	return -EINVAL;
}