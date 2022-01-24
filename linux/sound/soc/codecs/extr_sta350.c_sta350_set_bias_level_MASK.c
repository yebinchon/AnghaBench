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
struct sta350_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  gpiod_nreset; int /*<<< orphan*/  gpiod_power_down; int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  STA350_CONFF ; 
 int STA350_CONFF_EAPD ; 
 int STA350_CONFF_PWDN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct snd_soc_component*) ; 
 struct sta350_priv* FUNC8 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC10 (struct sta350_priv*) ; 

__attribute__((used)) static int FUNC11(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	struct sta350_priv *sta350 = FUNC8(component);
	int ret;

	FUNC1(component->dev, "level = %d\n", level);
	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		/* Full power on */
		FUNC4(sta350->regmap, STA350_CONFF,
				   STA350_CONFF_PWDN | STA350_CONFF_EAPD,
				   STA350_CONFF_PWDN | STA350_CONFF_EAPD);
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC7(component) == SND_SOC_BIAS_OFF) {
			ret = FUNC6(
				FUNC0(sta350->supplies),
				sta350->supplies);
			if (ret < 0) {
				FUNC2(component->dev,
					"Failed to enable supplies: %d\n",
					ret);
				return ret;
			}
			FUNC10(sta350);
			FUNC9(component);
		}

		/* Power down */
		FUNC4(sta350->regmap, STA350_CONFF,
				   STA350_CONFF_PWDN | STA350_CONFF_EAPD,
				   0);

		break;

	case SND_SOC_BIAS_OFF:
		/* The chip runs through the power down sequence for us */
		FUNC4(sta350->regmap, STA350_CONFF,
				   STA350_CONFF_PWDN | STA350_CONFF_EAPD, 0);

		/* power down: low */
		if (sta350->gpiod_power_down)
			FUNC3(sta350->gpiod_power_down, 0);

		if (sta350->gpiod_nreset)
			FUNC3(sta350->gpiod_nreset, 0);

		FUNC5(FUNC0(sta350->supplies),
				       sta350->supplies);
		break;
	}
	return 0;
}