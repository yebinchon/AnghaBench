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
struct da7213_platform_data {int /*<<< orphan*/  dmic_clk_rate; int /*<<< orphan*/  dmic_samplephase; int /*<<< orphan*/  dmic_data_sel; void* micbias2_lvl; void* micbias1_lvl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA7213_DMIC_CLK_3_0MHZ ; 
 int /*<<< orphan*/  DA7213_DMIC_DATA_LRISE_RFALL ; 
 int /*<<< orphan*/  DA7213_DMIC_SAMPLE_ON_CLKEDGE ; 
 void* DA7213_MICBIAS_2_2V ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,char const*) ; 
 void* FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,char const**) ; 
 scalar_t__ FUNC5 (struct device*,char*,int /*<<< orphan*/ *) ; 
 struct da7213_platform_data* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct da7213_platform_data
	*FUNC7(struct snd_soc_component *component)
{
	struct device *dev = component->dev;
	struct da7213_platform_data *pdata;
	const char *fw_str;
	u32 fw_val32;

	pdata = FUNC6(component->dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return NULL;

	if (FUNC5(dev, "dlg,micbias1-lvl", &fw_val32) >= 0)
		pdata->micbias1_lvl = FUNC3(component, fw_val32);
	else
		pdata->micbias1_lvl = DA7213_MICBIAS_2_2V;

	if (FUNC5(dev, "dlg,micbias2-lvl", &fw_val32) >= 0)
		pdata->micbias2_lvl = FUNC3(component, fw_val32);
	else
		pdata->micbias2_lvl = DA7213_MICBIAS_2_2V;

	if (!FUNC4(dev, "dlg,dmic-data-sel", &fw_str))
		pdata->dmic_data_sel = FUNC1(component, fw_str);
	else
		pdata->dmic_data_sel = DA7213_DMIC_DATA_LRISE_RFALL;

	if (!FUNC4(dev, "dlg,dmic-samplephase", &fw_str))
		pdata->dmic_samplephase =
			FUNC2(component, fw_str);
	else
		pdata->dmic_samplephase = DA7213_DMIC_SAMPLE_ON_CLKEDGE;

	if (FUNC5(dev, "dlg,dmic-clkrate", &fw_val32) >= 0)
		pdata->dmic_clk_rate = FUNC0(component, fw_val32);
	else
		pdata->dmic_clk_rate = DA7213_DMIC_CLK_3_0MHZ;

	return pdata;
}