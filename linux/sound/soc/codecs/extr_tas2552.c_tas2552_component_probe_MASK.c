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
struct tas2552_data {int /*<<< orphan*/  supplies; int /*<<< orphan*/  enable_gpio; struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TAS2552_APT_DELAY_200 ; 
 int TAS2552_APT_EN ; 
 int TAS2552_APT_THRESH_20_17 ; 
 int /*<<< orphan*/  TAS2552_BOOST_APT_CTRL ; 
 int TAS2552_BOOST_EN ; 
 int /*<<< orphan*/  TAS2552_CFG_1 ; 
 int /*<<< orphan*/  TAS2552_CFG_2 ; 
 int /*<<< orphan*/  TAS2552_CFG_3 ; 
 int /*<<< orphan*/  TAS2552_DATA_OUT_V_DATA ; 
 int TAS2552_DIN_SRC_SEL_AVG_L_R ; 
 int TAS2552_I2S_OUT_SEL ; 
 int TAS2552_LIM_EN ; 
 int /*<<< orphan*/  TAS2552_MUTE ; 
 int /*<<< orphan*/  TAS2552_OUTPUT_DATA ; 
 int TAS2552_PDM_DATA_SEL_V_I ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tas2552_data* FUNC7 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_soc_component*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_component *component)
{
	struct tas2552_data *tas2552 = FUNC7(component);
	int ret;

	tas2552->component = component;

	ret = FUNC6(FUNC0(tas2552->supplies),
				    tas2552->supplies);

	if (ret != 0) {
		FUNC2(component->dev, "Failed to enable supplies: %d\n",
			ret);
		return ret;
	}

	FUNC3(tas2552->enable_gpio, 1);

	ret = FUNC4(component->dev);
	if (ret < 0) {
		FUNC2(component->dev, "Enabling device failed: %d\n",
			ret);
		goto probe_fail;
	}

	FUNC8(component, TAS2552_CFG_1, TAS2552_MUTE, TAS2552_MUTE);
	FUNC9(component, TAS2552_CFG_3, TAS2552_I2S_OUT_SEL |
					    TAS2552_DIN_SRC_SEL_AVG_L_R);
	FUNC9(component, TAS2552_OUTPUT_DATA,
		      TAS2552_PDM_DATA_SEL_V_I |
		      FUNC1(TAS2552_DATA_OUT_V_DATA));
	FUNC9(component, TAS2552_BOOST_APT_CTRL, TAS2552_APT_DELAY_200 |
						     TAS2552_APT_THRESH_20_17);

	FUNC9(component, TAS2552_CFG_2, TAS2552_BOOST_EN | TAS2552_APT_EN |
					    TAS2552_LIM_EN);

	return 0;

probe_fail:
	FUNC3(tas2552->enable_gpio, 0);

	FUNC5(FUNC0(tas2552->supplies),
					tas2552->supplies);
	return ret;
}