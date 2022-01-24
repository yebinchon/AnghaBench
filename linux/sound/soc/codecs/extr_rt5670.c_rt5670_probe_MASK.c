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
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct rt5670_priv {struct snd_soc_component* component; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
#define  RT5670_ID_5670 130 
#define  RT5670_ID_5671 129 
#define  RT5670_ID_5672 128 
 int RT5670_ID_MASK ; 
 int /*<<< orphan*/  RT5670_RESET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rt5670_specific_dapm_routes ; 
 int /*<<< orphan*/  rt5670_specific_dapm_widgets ; 
 int /*<<< orphan*/  rt5672_specific_dapm_routes ; 
 int /*<<< orphan*/  rt5672_specific_dapm_widgets ; 
 struct snd_soc_dapm_context* FUNC2 (struct snd_soc_component*) ; 
 struct rt5670_priv* FUNC3 (struct snd_soc_component*) ; 
 int FUNC4 (struct snd_soc_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_soc_dapm_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_soc_component *component)
{
	struct snd_soc_dapm_context *dapm = FUNC2(component);
	struct rt5670_priv *rt5670 = FUNC3(component);

	switch (FUNC4(component, RT5670_RESET) & RT5670_ID_MASK) {
	case RT5670_ID_5670:
	case RT5670_ID_5671:
		FUNC6(dapm,
			rt5670_specific_dapm_widgets,
			FUNC0(rt5670_specific_dapm_widgets));
		FUNC5(dapm,
			rt5670_specific_dapm_routes,
			FUNC0(rt5670_specific_dapm_routes));
		break;
	case RT5670_ID_5672:
		FUNC6(dapm,
			rt5672_specific_dapm_widgets,
			FUNC0(rt5672_specific_dapm_widgets));
		FUNC5(dapm,
			rt5672_specific_dapm_routes,
			FUNC0(rt5672_specific_dapm_routes));
		break;
	default:
		FUNC1(component->dev,
			"The driver is for RT5670 RT5671 or RT5672 only\n");
		return -ENODEV;
	}
	rt5670->component = component;

	return 0;
}