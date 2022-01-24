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
struct sta32x_priv {int /*<<< orphan*/  supplies; int /*<<< orphan*/  gpiod_nreset; int /*<<< orphan*/  regmap; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  STA32X_CONFF ; 
 int STA32X_CONFF_EAPD ; 
 int STA32X_CONFF_PWDN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct snd_soc_component*) ; 
 struct sta32x_priv* FUNC9 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC11 (struct sta32x_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct sta32x_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct sta32x_priv*) ; 

__attribute__((used)) static int FUNC14(struct snd_soc_component *component,
				 enum snd_soc_bias_level level)
{
	int ret;
	struct sta32x_priv *sta32x = FUNC9(component);

	FUNC1(component->dev, "level = %d\n", level);
	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		/* Full power on */
		FUNC5(sta32x->regmap, STA32X_CONFF,
				    STA32X_CONFF_PWDN | STA32X_CONFF_EAPD,
				    STA32X_CONFF_PWDN | STA32X_CONFF_EAPD);
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC8(component) == SND_SOC_BIAS_OFF) {
			ret = FUNC7(FUNC0(sta32x->supplies),
						    sta32x->supplies);
			if (ret != 0) {
				FUNC2(component->dev,
					"Failed to enable supplies: %d\n", ret);
				return ret;
			}

			FUNC11(sta32x);
			FUNC10(component);
			FUNC12(sta32x);
		}

		/* Power down */
		FUNC5(sta32x->regmap, STA32X_CONFF,
				   STA32X_CONFF_PWDN | STA32X_CONFF_EAPD,
				   0);

		break;

	case SND_SOC_BIAS_OFF:
		/* The chip runs through the power down sequence for us. */
		FUNC5(sta32x->regmap, STA32X_CONFF,
				   STA32X_CONFF_PWDN | STA32X_CONFF_EAPD, 0);
		FUNC4(300);
		FUNC13(sta32x);

		FUNC3(sta32x->gpiod_nreset, 0);

		FUNC6(FUNC0(sta32x->supplies),
				       sta32x->supplies);
		break;
	}
	return 0;
}