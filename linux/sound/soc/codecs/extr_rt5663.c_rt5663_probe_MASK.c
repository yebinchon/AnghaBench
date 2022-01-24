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
struct rt5663_priv {int codec_ver; int /*<<< orphan*/  imp_table; struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CODEC_VER_0 129 
#define  CODEC_VER_1 128 
 int /*<<< orphan*/  rt5663_hpvol_controls ; 
 int /*<<< orphan*/  rt5663_specific_controls ; 
 int /*<<< orphan*/  rt5663_specific_dapm_routes ; 
 int /*<<< orphan*/  rt5663_specific_dapm_widgets ; 
 int /*<<< orphan*/  rt5663_v2_specific_controls ; 
 int /*<<< orphan*/  rt5663_v2_specific_dapm_routes ; 
 int /*<<< orphan*/  rt5663_v2_specific_dapm_widgets ; 
 int /*<<< orphan*/  FUNC1 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct snd_soc_dapm_context* FUNC2 (struct snd_soc_component*) ; 
 struct rt5663_priv* FUNC3 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC2(component);
	struct rt5663_priv *rt5663 = FUNC3(component);

	rt5663->component = component;

	switch (rt5663->codec_ver) {
	case CODEC_VER_1:
		FUNC5(dapm,
			rt5663_v2_specific_dapm_widgets,
			FUNC0(rt5663_v2_specific_dapm_widgets));
		FUNC4(dapm,
			rt5663_v2_specific_dapm_routes,
			FUNC0(rt5663_v2_specific_dapm_routes));
		FUNC1(component, rt5663_v2_specific_controls,
			FUNC0(rt5663_v2_specific_controls));
		break;
	case CODEC_VER_0:
		FUNC5(dapm,
			rt5663_specific_dapm_widgets,
			FUNC0(rt5663_specific_dapm_widgets));
		FUNC4(dapm,
			rt5663_specific_dapm_routes,
			FUNC0(rt5663_specific_dapm_routes));
		FUNC1(component, rt5663_specific_controls,
			FUNC0(rt5663_specific_controls));

		if (!rt5663->imp_table)
			FUNC1(component, rt5663_hpvol_controls,
				FUNC0(rt5663_hpvol_controls));
		break;
	}

	return 0;
}