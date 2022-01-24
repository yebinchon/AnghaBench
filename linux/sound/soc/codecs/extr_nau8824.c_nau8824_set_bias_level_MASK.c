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
struct snd_soc_component {int dummy; } ;
struct nau8824 {int /*<<< orphan*/  regmap; } ;
typedef  enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;

/* Variables and functions */
 int NAU8824_IRQ_EJECT_EN ; 
 int NAU8824_IRQ_INSERT_EN ; 
 int /*<<< orphan*/  NAU8824_REG_INTERRUPT_SETTING ; 
 int /*<<< orphan*/  NAU8824_REG_INTERRUPT_SETTING_1 ; 
#define  SND_SOC_BIAS_OFF 131 
#define  SND_SOC_BIAS_ON 130 
#define  SND_SOC_BIAS_PREPARE 129 
#define  SND_SOC_BIAS_STANDBY 128 
 int /*<<< orphan*/  FUNC0 (struct nau8824*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct snd_soc_component*) ; 
 struct nau8824* FUNC3 (struct snd_soc_component*) ; 

__attribute__((used)) static int FUNC4(struct snd_soc_component *component,
	enum snd_soc_bias_level level)
{
	struct nau8824 *nau8824 = FUNC3(component);

	switch (level) {
	case SND_SOC_BIAS_ON:
		break;

	case SND_SOC_BIAS_PREPARE:
		break;

	case SND_SOC_BIAS_STANDBY:
		if (FUNC2(component) == SND_SOC_BIAS_OFF) {
			/* Setup codec configuration after resume */
			FUNC0(nau8824);
		}
		break;

	case SND_SOC_BIAS_OFF:
		FUNC1(nau8824->regmap,
			NAU8824_REG_INTERRUPT_SETTING, 0x3ff, 0x3ff);
		FUNC1(nau8824->regmap,
			NAU8824_REG_INTERRUPT_SETTING_1,
			NAU8824_IRQ_EJECT_EN | NAU8824_IRQ_INSERT_EN, 0);
		break;
	}

	return 0;
}