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
struct snd_soc_dapm_context {scalar_t__ bias_level; } ;
struct regmap {int dummy; } ;
struct nau8824 {struct regmap* regmap; struct snd_soc_dapm_context* dapm; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAU8824_CLK_DIS ; 
 int NAU8824_IRQ_EJECT_DIS ; 
 int NAU8824_IRQ_EJECT_EN ; 
 int NAU8824_IRQ_INSERT_DIS ; 
 int NAU8824_IRQ_INSERT_EN ; 
 int NAU8824_IRQ_KEY_RELEASE_DIS ; 
 int NAU8824_IRQ_KEY_SHORT_PRESS_DIS ; 
 int NAU8824_JD_SLEEP_MODE ; 
 int /*<<< orphan*/  NAU8824_REG_ENA_CTRL ; 
 int /*<<< orphan*/  NAU8824_REG_INTERRUPT_SETTING ; 
 int /*<<< orphan*/  NAU8824_REG_INTERRUPT_SETTING_1 ; 
 scalar_t__ SND_SOC_BIAS_PREPARE ; 
 int /*<<< orphan*/  FUNC0 (struct nau8824*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nau8824*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_dapm_context*) ; 

__attribute__((used)) static void FUNC5(struct nau8824 *nau8824)
{
	struct snd_soc_dapm_context *dapm = nau8824->dapm;
	struct regmap *regmap = nau8824->regmap;

	/* Clear all interruption status */
	FUNC2(regmap);

	FUNC1(nau8824, "SAR");
	FUNC1(nau8824, "MICBIAS");
	FUNC4(dapm);

	/* Enable the insertion interruption, disable the ejection
	 * interruption, and then bypass de-bounce circuit.
	 */
	FUNC3(regmap, NAU8824_REG_INTERRUPT_SETTING,
		NAU8824_IRQ_KEY_RELEASE_DIS | NAU8824_IRQ_KEY_SHORT_PRESS_DIS |
		NAU8824_IRQ_EJECT_DIS | NAU8824_IRQ_INSERT_DIS,
		NAU8824_IRQ_KEY_RELEASE_DIS | NAU8824_IRQ_KEY_SHORT_PRESS_DIS |
		NAU8824_IRQ_EJECT_DIS);
	FUNC3(regmap, NAU8824_REG_INTERRUPT_SETTING_1,
		NAU8824_IRQ_INSERT_EN | NAU8824_IRQ_EJECT_EN,
		NAU8824_IRQ_INSERT_EN);
	FUNC3(regmap, NAU8824_REG_ENA_CTRL,
		NAU8824_JD_SLEEP_MODE, NAU8824_JD_SLEEP_MODE);

	/* Close clock for jack type detection at manual mode */
	if (dapm->bias_level < SND_SOC_BIAS_PREPARE)
		FUNC0(nau8824, NAU8824_CLK_DIS, 0);
}