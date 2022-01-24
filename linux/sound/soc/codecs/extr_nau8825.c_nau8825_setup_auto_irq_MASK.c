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
struct regmap {int dummy; } ;
struct nau8825 {struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAU8825_CLK_INTERNAL ; 
 int NAU8825_ENABLE_ADC ; 
 int NAU8825_I2S_MS_MASK ; 
 int NAU8825_I2S_MS_MASTER ; 
 int NAU8825_I2S_MS_SLAVE ; 
 int NAU8825_IRQ_EJECT_EN ; 
 int NAU8825_IRQ_HEADSET_COMPLETE_EN ; 
 int NAU8825_JACK_DET_DB_BYPASS ; 
 int /*<<< orphan*/  NAU8825_REG_ENA_CTRL ; 
 int /*<<< orphan*/  NAU8825_REG_I2S_PCM_CTRL2 ; 
 int /*<<< orphan*/  NAU8825_REG_INTERRUPT_DIS_CTRL ; 
 int /*<<< orphan*/  NAU8825_REG_INTERRUPT_MASK ; 
 int /*<<< orphan*/  NAU8825_REG_JACK_DET_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct nau8825*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct nau8825 *nau8825)
{
	struct regmap *regmap = nau8825->regmap;

	/* Enable headset jack type detection complete interruption and
	 * jack ejection interruption.
	 */
	FUNC2(regmap, NAU8825_REG_INTERRUPT_MASK,
		NAU8825_IRQ_HEADSET_COMPLETE_EN | NAU8825_IRQ_EJECT_EN, 0);

	/* Enable internal VCO needed for interruptions */
	FUNC0(nau8825, NAU8825_CLK_INTERNAL, 0);

	/* Enable ADC needed for interruptions */
	FUNC2(regmap, NAU8825_REG_ENA_CTRL,
		NAU8825_ENABLE_ADC, NAU8825_ENABLE_ADC);

	/* Chip needs one FSCLK cycle in order to generate interruptions,
	 * as we cannot guarantee one will be provided by the system. Turning
	 * master mode on then off enables us to generate that FSCLK cycle
	 * with a minimum of contention on the clock bus.
	 */
	FUNC2(regmap, NAU8825_REG_I2S_PCM_CTRL2,
		NAU8825_I2S_MS_MASK, NAU8825_I2S_MS_MASTER);
	FUNC2(regmap, NAU8825_REG_I2S_PCM_CTRL2,
		NAU8825_I2S_MS_MASK, NAU8825_I2S_MS_SLAVE);

	/* Not bypass de-bounce circuit */
	FUNC2(regmap, NAU8825_REG_JACK_DET_CTRL,
		NAU8825_JACK_DET_DB_BYPASS, 0);

	/* Unmask all interruptions */
	FUNC3(regmap, NAU8825_REG_INTERRUPT_DIS_CTRL, 0);

	/* Restart the jack detection process at auto mode */
	FUNC1(regmap);
}