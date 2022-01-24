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
struct nau8825 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAU8825_CLK_INTERNAL ; 
 int NAU8825_I2S_BLK_DIV_MASK ; 
 int NAU8825_I2S_LRC_DIV_MASK ; 
 int NAU8825_I2S_MS_MASK ; 
 int NAU8825_I2S_MS_SLAVE ; 
 int NAU8825_IRQ_RMS_EN ; 
 int /*<<< orphan*/  NAU8825_REG_I2S_PCM_CTRL2 ; 
 int /*<<< orphan*/  NAU8825_REG_IMM_MODE_CTRL ; 
 int /*<<< orphan*/  NAU8825_REG_INTERRUPT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct nau8825*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nau8825*) ; 
 int /*<<< orphan*/  FUNC2 (struct nau8825*) ; 
 int /*<<< orphan*/  FUNC3 (struct nau8825*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct nau8825 *nau8825, bool cause_cancel)
{
	/* Enable internal VCO needed for interruptions */
	FUNC0(nau8825, NAU8825_CLK_INTERNAL, 0);
	FUNC2(nau8825);
	FUNC1(nau8825);
	/* Clear cross talk parameters and disable */
	FUNC5(nau8825->regmap, NAU8825_REG_IMM_MODE_CTRL, 0);
	/* RMS intrruption disable */
	FUNC4(nau8825->regmap, NAU8825_REG_INTERRUPT_MASK,
		NAU8825_IRQ_RMS_EN, NAU8825_IRQ_RMS_EN);
	/* Recover default value for IIS */
	FUNC4(nau8825->regmap, NAU8825_REG_I2S_PCM_CTRL2,
		NAU8825_I2S_MS_MASK | NAU8825_I2S_LRC_DIV_MASK |
		NAU8825_I2S_BLK_DIV_MASK, NAU8825_I2S_MS_SLAVE);
	/* Restore value of specific register for cross talk */
	FUNC3(nau8825, cause_cancel);
}