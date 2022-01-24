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
struct nau8825 {int sar_voltage; int sar_compare_time; int sar_sampling_time; int sar_threshold_num; int sar_hysteresis; int key_debounce; int* sar_threshold; struct regmap* regmap; } ;

/* Variables and functions */
 int NAU8825_IRQ_KEY_RELEASE_EN ; 
 int NAU8825_IRQ_KEY_SHORT_PRESS_EN ; 
 int NAU8825_KEYDET_HYSTERESIS_MASK ; 
 int NAU8825_KEYDET_HYSTERESIS_SFT ; 
 int NAU8825_KEYDET_LEVELS_NR_MASK ; 
 int NAU8825_KEYDET_LEVELS_NR_SFT ; 
 int NAU8825_KEYDET_SHORTKEY_DEBOUNCE_MASK ; 
 int NAU8825_KEYDET_SHORTKEY_DEBOUNCE_SFT ; 
 int /*<<< orphan*/  NAU8825_REG_INTERRUPT_MASK ; 
 int /*<<< orphan*/  NAU8825_REG_KEYDET_CTRL ; 
 int /*<<< orphan*/  NAU8825_REG_SAR_CTRL ; 
 int /*<<< orphan*/  NAU8825_REG_VDET_THRESHOLD_1 ; 
 int /*<<< orphan*/  NAU8825_REG_VDET_THRESHOLD_2 ; 
 int /*<<< orphan*/  NAU8825_REG_VDET_THRESHOLD_3 ; 
 int /*<<< orphan*/  NAU8825_REG_VDET_THRESHOLD_4 ; 
 int NAU8825_SAR_COMPARE_TIME_MASK ; 
 int NAU8825_SAR_COMPARE_TIME_SFT ; 
 int NAU8825_SAR_SAMPLING_TIME_MASK ; 
 int NAU8825_SAR_SAMPLING_TIME_SFT ; 
 int NAU8825_SAR_TRACKING_GAIN_MASK ; 
 int NAU8825_SAR_TRACKING_GAIN_SFT ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct nau8825 *nau8825)
{
	struct regmap *regmap = nau8825->regmap;

	FUNC0(regmap, NAU8825_REG_SAR_CTRL,
		NAU8825_SAR_TRACKING_GAIN_MASK,
		nau8825->sar_voltage << NAU8825_SAR_TRACKING_GAIN_SFT);
	FUNC0(regmap, NAU8825_REG_SAR_CTRL,
		NAU8825_SAR_COMPARE_TIME_MASK,
		nau8825->sar_compare_time << NAU8825_SAR_COMPARE_TIME_SFT);
	FUNC0(regmap, NAU8825_REG_SAR_CTRL,
		NAU8825_SAR_SAMPLING_TIME_MASK,
		nau8825->sar_sampling_time << NAU8825_SAR_SAMPLING_TIME_SFT);

	FUNC0(regmap, NAU8825_REG_KEYDET_CTRL,
		NAU8825_KEYDET_LEVELS_NR_MASK,
		(nau8825->sar_threshold_num - 1) << NAU8825_KEYDET_LEVELS_NR_SFT);
	FUNC0(regmap, NAU8825_REG_KEYDET_CTRL,
		NAU8825_KEYDET_HYSTERESIS_MASK,
		nau8825->sar_hysteresis << NAU8825_KEYDET_HYSTERESIS_SFT);
	FUNC0(regmap, NAU8825_REG_KEYDET_CTRL,
		NAU8825_KEYDET_SHORTKEY_DEBOUNCE_MASK,
		nau8825->key_debounce << NAU8825_KEYDET_SHORTKEY_DEBOUNCE_SFT);

	FUNC1(regmap, NAU8825_REG_VDET_THRESHOLD_1,
		(nau8825->sar_threshold[0] << 8) | nau8825->sar_threshold[1]);
	FUNC1(regmap, NAU8825_REG_VDET_THRESHOLD_2,
		(nau8825->sar_threshold[2] << 8) | nau8825->sar_threshold[3]);
	FUNC1(regmap, NAU8825_REG_VDET_THRESHOLD_3,
		(nau8825->sar_threshold[4] << 8) | nau8825->sar_threshold[5]);
	FUNC1(regmap, NAU8825_REG_VDET_THRESHOLD_4,
		(nau8825->sar_threshold[6] << 8) | nau8825->sar_threshold[7]);

	/* Enable short press and release interruptions */
	FUNC0(regmap, NAU8825_REG_INTERRUPT_MASK,
		NAU8825_IRQ_KEY_SHORT_PRESS_EN | NAU8825_IRQ_KEY_RELEASE_EN,
		0);
}