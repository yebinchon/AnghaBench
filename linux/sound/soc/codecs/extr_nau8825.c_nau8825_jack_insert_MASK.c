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
struct regmap {int dummy; } ;
struct nau8825 {int high_imped; int /*<<< orphan*/  dev; struct snd_soc_dapm_context* dapm; struct regmap* regmap; } ;

/* Variables and functions */
 int NAU8825_MICBIAS_JKR2 ; 
 int NAU8825_MICBIAS_JKSLV ; 
 int /*<<< orphan*/  NAU8825_REG_GENERAL_STATUS ; 
 int /*<<< orphan*/  NAU8825_REG_HSD_CTRL ; 
 int /*<<< orphan*/  NAU8825_REG_MIC_BIAS ; 
 int /*<<< orphan*/  NAU8825_REG_SAR_CTRL ; 
 int NAU8825_SAR_INPUT_JKR2 ; 
 int NAU8825_SAR_INPUT_JKSLV ; 
 int NAU8825_SAR_INPUT_MASK ; 
 int SND_JACK_HEADPHONE ; 
 int SND_JACK_HEADSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static int FUNC6(struct nau8825 *nau8825)
{
	struct regmap *regmap = nau8825->regmap;
	struct snd_soc_dapm_context *dapm = nau8825->dapm;
	int jack_status_reg, mic_detected;
	int type = 0;

	FUNC2(regmap, NAU8825_REG_GENERAL_STATUS, &jack_status_reg);
	mic_detected = (jack_status_reg >> 10) & 3;
	/* The JKSLV and JKR2 all detected in high impedance headset */
	if (mic_detected == 0x3)
		nau8825->high_imped = true;
	else
		nau8825->high_imped = false;

	switch (mic_detected) {
	case 0:
		/* no mic */
		type = SND_JACK_HEADPHONE;
		break;
	case 1:
		FUNC0(nau8825->dev, "OMTP (micgnd1) mic connected\n");
		type = SND_JACK_HEADSET;

		/* Unground MICGND1 */
		FUNC3(regmap, NAU8825_REG_HSD_CTRL, 3 << 2,
			1 << 2);
		/* Attach 2kOhm Resistor from MICBIAS to MICGND1 */
		FUNC3(regmap, NAU8825_REG_MIC_BIAS,
			NAU8825_MICBIAS_JKSLV | NAU8825_MICBIAS_JKR2,
			NAU8825_MICBIAS_JKR2);
		/* Attach SARADC to MICGND1 */
		FUNC3(regmap, NAU8825_REG_SAR_CTRL,
			NAU8825_SAR_INPUT_MASK,
			NAU8825_SAR_INPUT_JKR2);

		FUNC4(dapm, "MICBIAS");
		FUNC4(dapm, "SAR");
		FUNC5(dapm);
		break;
	case 2:
		FUNC0(nau8825->dev, "CTIA (micgnd2) mic connected\n");
		type = SND_JACK_HEADSET;

		/* Unground MICGND2 */
		FUNC3(regmap, NAU8825_REG_HSD_CTRL, 3 << 2,
			2 << 2);
		/* Attach 2kOhm Resistor from MICBIAS to MICGND2 */
		FUNC3(regmap, NAU8825_REG_MIC_BIAS,
			NAU8825_MICBIAS_JKSLV | NAU8825_MICBIAS_JKR2,
			NAU8825_MICBIAS_JKSLV);
		/* Attach SARADC to MICGND2 */
		FUNC3(regmap, NAU8825_REG_SAR_CTRL,
			NAU8825_SAR_INPUT_MASK,
			NAU8825_SAR_INPUT_JKSLV);

		FUNC4(dapm, "MICBIAS");
		FUNC4(dapm, "SAR");
		FUNC5(dapm);
		break;
	case 3:
		/* detect error case */
		FUNC1(nau8825->dev, "detection error; disable mic function\n");
		type = SND_JACK_HEADPHONE;
		break;
	}

	/* Leaving HPOL/R grounded after jack insert by default. They will be
	 * ungrounded as part of the widget power up sequence at the beginning
	 * of playback to reduce pop.
	 */
	return type;
}