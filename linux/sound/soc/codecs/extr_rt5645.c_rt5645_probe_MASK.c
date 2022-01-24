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
struct snd_soc_dapm_context {int dummy; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; TYPE_1__* card; } ;
struct TYPE_4__ {scalar_t__ long_name; scalar_t__ jd_mode; } ;
struct rt5645_priv {int codec_type; int v_id; int /*<<< orphan*/  eq_param; TYPE_2__ pdata; struct snd_soc_component* component; } ;
struct rt5645_eq_param_s {int dummy; } ;
struct TYPE_3__ {scalar_t__ long_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CODEC_TYPE_RT5645 129 
#define  CODEC_TYPE_RT5650 128 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RT5645_HWEQ_NUM ; 
 int /*<<< orphan*/  SND_SOC_BIAS_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rt5645_old_dapm_routes ; 
 int /*<<< orphan*/  rt5645_specific_dapm_routes ; 
 int /*<<< orphan*/  rt5645_specific_dapm_widgets ; 
 int /*<<< orphan*/  rt5650_specific_dapm_routes ; 
 int /*<<< orphan*/  rt5650_specific_dapm_widgets ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC3 (struct snd_soc_component*) ; 
 struct rt5645_priv* FUNC4 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static int FUNC9(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC3(component);
	struct rt5645_priv *rt5645 = FUNC4(component);

	rt5645->component = component;

	switch (rt5645->codec_type) {
	case CODEC_TYPE_RT5645:
		FUNC7(dapm,
			rt5645_specific_dapm_widgets,
			FUNC0(rt5645_specific_dapm_widgets));
		FUNC5(dapm,
			rt5645_specific_dapm_routes,
			FUNC0(rt5645_specific_dapm_routes));
		if (rt5645->v_id < 3) {
			FUNC5(dapm,
				rt5645_old_dapm_routes,
				FUNC0(rt5645_old_dapm_routes));
		}
		break;
	case CODEC_TYPE_RT5650:
		FUNC7(dapm,
			rt5650_specific_dapm_widgets,
			FUNC0(rt5650_specific_dapm_widgets));
		FUNC5(dapm,
			rt5650_specific_dapm_routes,
			FUNC0(rt5650_specific_dapm_routes));
		break;
	}

	FUNC2(component, SND_SOC_BIAS_OFF);

	/* for JD function */
	if (rt5645->pdata.jd_mode) {
		FUNC6(dapm, "JD Power");
		FUNC6(dapm, "LDO2");
		FUNC8(dapm);
	}

	if (rt5645->pdata.long_name)
		component->card->long_name = rt5645->pdata.long_name;

	rt5645->eq_param = FUNC1(component->dev,
		RT5645_HWEQ_NUM, sizeof(struct rt5645_eq_param_s),
		GFP_KERNEL);

	if (!rt5645->eq_param)
		return -ENOMEM;

	return 0;
}