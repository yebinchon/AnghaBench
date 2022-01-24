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
struct nau8825 {struct regmap* regmap; struct snd_soc_dapm_context* dapm; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAU8825_CLK_DIS ; 
 int NAU8825_ENABLE_ADC ; 
 int NAU8825_IRQ_EJECT_DIS ; 
 int NAU8825_IRQ_EJECT_EN ; 
 int NAU8825_IRQ_HEADSET_COMPLETE_EN ; 
 int NAU8825_IRQ_INSERT_DIS ; 
 int NAU8825_IRQ_INSERT_EN ; 
 int NAU8825_IRQ_OUTPUT_EN ; 
 int NAU8825_JACK_DET_DB_BYPASS ; 
 int NAU8825_MICBIAS_JKR2 ; 
 int NAU8825_MICBIAS_JKSLV ; 
 int /*<<< orphan*/  NAU8825_REG_ENA_CTRL ; 
 int /*<<< orphan*/  NAU8825_REG_HSD_CTRL ; 
 int /*<<< orphan*/  NAU8825_REG_INTERRUPT_DIS_CTRL ; 
 int /*<<< orphan*/  NAU8825_REG_INTERRUPT_MASK ; 
 int /*<<< orphan*/  NAU8825_REG_JACK_DET_CTRL ; 
 int /*<<< orphan*/  NAU8825_REG_MIC_BIAS ; 
 int /*<<< orphan*/  FUNC0 (struct nau8825*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct nau8825*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static void FUNC6(struct nau8825 *nau8825)
{
	struct snd_soc_dapm_context *dapm = nau8825->dapm;
	struct regmap *regmap = nau8825->regmap;

	/* Force to cancel the cross talk detection process */
	FUNC2(nau8825);

	FUNC4(dapm, "SAR");
	FUNC4(dapm, "MICBIAS");
	/* Detach 2kOhm Resistors from MICBIAS to MICGND1/2 */
	FUNC3(regmap, NAU8825_REG_MIC_BIAS,
		NAU8825_MICBIAS_JKSLV | NAU8825_MICBIAS_JKR2, 0);
	/* ground HPL/HPR, MICGRND1/2 */
	FUNC3(regmap, NAU8825_REG_HSD_CTRL, 0xf, 0xf);

	FUNC5(dapm);

	/* Clear all interruption status */
	FUNC1(regmap);

	/* Enable the insertion interruption, disable the ejection inter-
	 * ruption, and then bypass de-bounce circuit.
	 */
	FUNC3(regmap, NAU8825_REG_INTERRUPT_DIS_CTRL,
		NAU8825_IRQ_EJECT_DIS | NAU8825_IRQ_INSERT_DIS,
		NAU8825_IRQ_EJECT_DIS);
	FUNC3(regmap, NAU8825_REG_INTERRUPT_MASK,
		NAU8825_IRQ_OUTPUT_EN | NAU8825_IRQ_EJECT_EN |
		NAU8825_IRQ_HEADSET_COMPLETE_EN | NAU8825_IRQ_INSERT_EN,
		NAU8825_IRQ_OUTPUT_EN | NAU8825_IRQ_EJECT_EN |
		NAU8825_IRQ_HEADSET_COMPLETE_EN);
	FUNC3(regmap, NAU8825_REG_JACK_DET_CTRL,
		NAU8825_JACK_DET_DB_BYPASS, NAU8825_JACK_DET_DB_BYPASS);

	/* Disable ADC needed for interruptions at audo mode */
	FUNC3(regmap, NAU8825_REG_ENA_CTRL,
		NAU8825_ENABLE_ADC, 0);

	/* Close clock for jack type detection at manual mode */
	FUNC0(nau8825, NAU8825_CLK_DIS, 0);
}