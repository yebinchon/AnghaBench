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
struct nau8824 {int /*<<< orphan*/  regmap; scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAU8824_CLK_DIS ; 
 int NAU8824_IRQ_EJECT_DIS ; 
 int NAU8824_IRQ_EJECT_EN ; 
 int NAU8824_IRQ_INSERT_DIS ; 
 int NAU8824_IRQ_INSERT_EN ; 
 int NAU8824_JD_SLEEP_MODE ; 
 int /*<<< orphan*/  NAU8824_REG_ENA_CTRL ; 
 int /*<<< orphan*/  NAU8824_REG_INTERRUPT_SETTING ; 
 int /*<<< orphan*/  NAU8824_REG_INTERRUPT_SETTING_1 ; 
 int /*<<< orphan*/  FUNC0 (struct nau8824*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct nau8824 *nau8824)
{
	FUNC0(nau8824, NAU8824_CLK_DIS, 0);
	if (nau8824->irq) {
		/* Clear all interruption status */
		FUNC1(nau8824->regmap);
		/* Enable jack detection at sleep mode, insertion detection,
		 * and ejection detection.
		 */
		FUNC2(nau8824->regmap, NAU8824_REG_ENA_CTRL,
			NAU8824_JD_SLEEP_MODE, NAU8824_JD_SLEEP_MODE);
		FUNC2(nau8824->regmap,
			NAU8824_REG_INTERRUPT_SETTING_1,
			NAU8824_IRQ_EJECT_EN | NAU8824_IRQ_INSERT_EN,
			NAU8824_IRQ_EJECT_EN | NAU8824_IRQ_INSERT_EN);
		FUNC2(nau8824->regmap,
			NAU8824_REG_INTERRUPT_SETTING,
			NAU8824_IRQ_EJECT_DIS | NAU8824_IRQ_INSERT_DIS, 0);
	}
}