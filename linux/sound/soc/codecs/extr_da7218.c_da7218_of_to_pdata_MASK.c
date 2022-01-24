#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct snd_soc_component {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct da7218_priv {scalar_t__ dev_id; } ;
struct da7218_pdata {int hp_diff_single_supply; struct da7218_hpldet_pdata* hpldet_pdata; void* dmic2_clk_rate; void* dmic2_samplephase; void* dmic2_data_sel; void* dmic1_clk_rate; void* dmic1_samplephase; void* dmic1_data_sel; void* mic2_amp_in_sel; void* mic1_amp_in_sel; void* micbias2_lvl; void* micbias1_lvl; } ;
struct da7218_hpldet_pdata {int comp_inv; int hyst; int discharge; int /*<<< orphan*/  jack_thr; int /*<<< orphan*/  jack_debounce; int /*<<< orphan*/  jack_rate; } ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 scalar_t__ DA7217_DEV_ID ; 
 scalar_t__ DA7218_DEV_ID ; 
 void* DA7218_DMIC_CLK_3_0MHZ ; 
 void* DA7218_DMIC_DATA_LRISE_RFALL ; 
 void* DA7218_DMIC_SAMPLE_ON_CLKEDGE ; 
 int /*<<< orphan*/  DA7218_HPLDET_JACK_DEBOUNCE_2 ; 
 int /*<<< orphan*/  DA7218_HPLDET_JACK_RATE_40US ; 
 int /*<<< orphan*/  DA7218_HPLDET_JACK_THR_84PCT ; 
 void* DA7218_MICBIAS_1_6V ; 
 void* DA7218_MIC_AMP_IN_SEL_DIFF ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct snd_soc_component*,char const*) ; 
 void* FUNC2 (struct snd_soc_component*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (struct snd_soc_component*,char const*) ; 
 void* FUNC7 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC9 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 scalar_t__ FUNC11 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,char*,char const**) ; 
 scalar_t__ FUNC13 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct da7218_priv* FUNC14 (struct snd_soc_component*) ; 

__attribute__((used)) static struct da7218_pdata *FUNC15(struct snd_soc_component *component)
{
	struct da7218_priv *da7218 = FUNC14(component);
	struct device_node *np = component->dev->of_node;
	struct device_node *hpldet_np;
	struct da7218_pdata *pdata;
	struct da7218_hpldet_pdata *hpldet_pdata;
	const char *of_str;
	u32 of_val32;

	pdata = FUNC8(component->dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return NULL;

	if (FUNC13(np, "dlg,micbias1-lvl-millivolt", &of_val32) >= 0)
		pdata->micbias1_lvl = FUNC7(component, of_val32);
	else
		pdata->micbias1_lvl = DA7218_MICBIAS_1_6V;

	if (FUNC13(np, "dlg,micbias2-lvl-millivolt", &of_val32) >= 0)
		pdata->micbias2_lvl = FUNC7(component, of_val32);
	else
		pdata->micbias2_lvl = DA7218_MICBIAS_1_6V;

	if (!FUNC12(np, "dlg,mic1-amp-in-sel", &of_str))
		pdata->mic1_amp_in_sel =
			FUNC6(component, of_str);
	else
		pdata->mic1_amp_in_sel = DA7218_MIC_AMP_IN_SEL_DIFF;

	if (!FUNC12(np, "dlg,mic2-amp-in-sel", &of_str))
		pdata->mic2_amp_in_sel =
			FUNC6(component, of_str);
	else
		pdata->mic2_amp_in_sel = DA7218_MIC_AMP_IN_SEL_DIFF;

	if (!FUNC12(np, "dlg,dmic1-data-sel", &of_str))
		pdata->dmic1_data_sel =	FUNC1(component, of_str);
	else
		pdata->dmic1_data_sel =	DA7218_DMIC_DATA_LRISE_RFALL;

	if (!FUNC12(np, "dlg,dmic1-samplephase", &of_str))
		pdata->dmic1_samplephase =
			FUNC2(component, of_str);
	else
		pdata->dmic1_samplephase = DA7218_DMIC_SAMPLE_ON_CLKEDGE;

	if (FUNC13(np, "dlg,dmic1-clkrate-hz", &of_val32) >= 0)
		pdata->dmic1_clk_rate = FUNC0(component, of_val32);
	else
		pdata->dmic1_clk_rate = DA7218_DMIC_CLK_3_0MHZ;

	if (!FUNC12(np, "dlg,dmic2-data-sel", &of_str))
		pdata->dmic2_data_sel = FUNC1(component, of_str);
	else
		pdata->dmic2_data_sel =	DA7218_DMIC_DATA_LRISE_RFALL;

	if (!FUNC12(np, "dlg,dmic2-samplephase", &of_str))
		pdata->dmic2_samplephase =
			FUNC2(component, of_str);
	else
		pdata->dmic2_samplephase = DA7218_DMIC_SAMPLE_ON_CLKEDGE;

	if (FUNC13(np, "dlg,dmic2-clkrate-hz", &of_val32) >= 0)
		pdata->dmic2_clk_rate = FUNC0(component, of_val32);
	else
		pdata->dmic2_clk_rate = DA7218_DMIC_CLK_3_0MHZ;

	if (da7218->dev_id == DA7217_DEV_ID) {
		if (FUNC11(np, "dlg,hp-diff-single-supply"))
			pdata->hp_diff_single_supply = true;
	}

	if (da7218->dev_id == DA7218_DEV_ID) {
		hpldet_np = FUNC9(np, "da7218_hpldet");
		if (!hpldet_np)
			return pdata;

		hpldet_pdata = FUNC8(component->dev, sizeof(*hpldet_pdata),
					    GFP_KERNEL);
		if (!hpldet_pdata) {
			FUNC10(hpldet_np);
			return pdata;
		}
		pdata->hpldet_pdata = hpldet_pdata;

		if (FUNC13(hpldet_np, "dlg,jack-rate-us",
					 &of_val32) >= 0)
			hpldet_pdata->jack_rate =
				FUNC4(component, of_val32);
		else
			hpldet_pdata->jack_rate = DA7218_HPLDET_JACK_RATE_40US;

		if (FUNC13(hpldet_np, "dlg,jack-debounce",
					 &of_val32) >= 0)
			hpldet_pdata->jack_debounce =
				FUNC3(component, of_val32);
		else
			hpldet_pdata->jack_debounce =
				DA7218_HPLDET_JACK_DEBOUNCE_2;

		if (FUNC13(hpldet_np, "dlg,jack-threshold-pct",
					 &of_val32) >= 0)
			hpldet_pdata->jack_thr =
				FUNC5(component, of_val32);
		else
			hpldet_pdata->jack_thr = DA7218_HPLDET_JACK_THR_84PCT;

		if (FUNC11(hpldet_np, "dlg,comp-inv"))
			hpldet_pdata->comp_inv = true;

		if (FUNC11(hpldet_np, "dlg,hyst"))
			hpldet_pdata->hyst = true;

		if (FUNC11(hpldet_np, "dlg,discharge"))
			hpldet_pdata->discharge = true;

		FUNC10(hpldet_np);
	}

	return pdata;
}