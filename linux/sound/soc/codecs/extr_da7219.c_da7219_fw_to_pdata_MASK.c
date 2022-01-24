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
typedef  int /*<<< orphan*/  u32 ;
struct snd_soc_component {struct device* dev; } ;
struct device {int dummy; } ;
struct da7219_pdata {char** dai_clk_names; int /*<<< orphan*/  mic_amp_in_sel; int /*<<< orphan*/  micbias_lvl; int /*<<< orphan*/  wakeup_source; } ;

/* Variables and functions */
 size_t DA7219_DAI_BCLK_IDX ; 
 int /*<<< orphan*/  DA7219_DAI_NUM_CLKS ; 
 size_t DA7219_DAI_WCLK_IDX ; 
 int /*<<< orphan*/  DA7219_MICBIAS_2_2V ; 
 int /*<<< orphan*/  DA7219_MIC_AMP_IN_SEL_DIFF ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,char const**) ; 
 scalar_t__ FUNC5 (struct device*,char*,char**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct device*,char*,int /*<<< orphan*/ *) ; 
 struct da7219_pdata* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct da7219_pdata *FUNC8(struct snd_soc_component *component)
{
	struct device *dev = component->dev;
	struct da7219_pdata *pdata;
	const char *of_str;
	u32 of_val32;

	pdata = FUNC7(dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return NULL;

	pdata->wakeup_source = FUNC3(dev, "wakeup-source");

	pdata->dai_clk_names[DA7219_DAI_WCLK_IDX] = "da7219-dai-wclk";
	pdata->dai_clk_names[DA7219_DAI_BCLK_IDX] = "da7219-dai-bclk";
	if (FUNC5(dev, "clock-output-names",
					      pdata->dai_clk_names,
					      DA7219_DAI_NUM_CLKS) < 0)
		FUNC2(dev, "Using default DAI clk names: %s, %s\n",
			 pdata->dai_clk_names[DA7219_DAI_WCLK_IDX],
			 pdata->dai_clk_names[DA7219_DAI_BCLK_IDX]);

	if (FUNC6(dev, "dlg,micbias-lvl", &of_val32) >= 0)
		pdata->micbias_lvl = FUNC1(dev, of_val32);
	else
		pdata->micbias_lvl = DA7219_MICBIAS_2_2V;

	if (!FUNC4(dev, "dlg,mic-amp-in-sel", &of_str))
		pdata->mic_amp_in_sel = FUNC0(dev, of_str);
	else
		pdata->mic_amp_in_sel = DA7219_MIC_AMP_IN_SEL_DIFF;

	return pdata;
}