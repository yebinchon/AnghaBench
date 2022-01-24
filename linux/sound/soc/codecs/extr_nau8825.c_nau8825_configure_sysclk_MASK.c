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
struct nau8825 {int /*<<< orphan*/  dev; int /*<<< orphan*/  mclk_freq; int /*<<< orphan*/  mclk; struct regmap* regmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int HZ ; 
#define  NAU8825_CLK_DIS 133 
#define  NAU8825_CLK_FLL_BLK 132 
#define  NAU8825_CLK_FLL_FS 131 
#define  NAU8825_CLK_FLL_MCLK 130 
#define  NAU8825_CLK_INTERNAL 129 
#define  NAU8825_CLK_MCLK 128 
 int NAU8825_CLK_MCLK_SRC_MASK ; 
 int NAU8825_CLK_SRC_MASK ; 
 int NAU8825_CLK_SRC_VCO ; 
 int NAU8825_DCO_EN ; 
 int NAU8825_FLL_CLK_SRC_BLK ; 
 int NAU8825_FLL_CLK_SRC_FS ; 
 int NAU8825_FLL_CLK_SRC_MASK ; 
 int NAU8825_FLL_CLK_SRC_MCLK ; 
 int NAU8825_FLL_RATIO_MASK ; 
 int NAU8825_GAIN_ERR_MASK ; 
 int NAU8825_GAIN_ERR_SFT ; 
 int NAU8825_ICTRL_LATCH_MASK ; 
 int /*<<< orphan*/  NAU8825_REG_CLK_DIVIDER ; 
 int /*<<< orphan*/  NAU8825_REG_FLL1 ; 
 int /*<<< orphan*/  NAU8825_REG_FLL3 ; 
 int /*<<< orphan*/  NAU8825_REG_FLL6 ; 
 int NAU8825_SDM_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*) ; 
 int FUNC6 (struct nau8825*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct nau8825*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nau8825*) ; 
 int /*<<< orphan*/  FUNC9 (struct regmap*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC10(struct nau8825 *nau8825, int clk_id,
	unsigned int freq)
{
	struct regmap *regmap = nau8825->regmap;
	int ret;

	switch (clk_id) {
	case NAU8825_CLK_DIS:
		/* Clock provided externally and disable internal VCO clock */
		FUNC4(regmap);
		if (nau8825->mclk_freq) {
			FUNC0(nau8825->mclk);
			nau8825->mclk_freq = 0;
		}

		break;
	case NAU8825_CLK_MCLK:
		/* Acquire the semaphore to synchronize the playback and
		 * interrupt handler. In order to avoid the playback inter-
		 * fered by cross talk process, the driver make the playback
		 * preparation halted until cross talk process finish.
		 */
		FUNC7(nau8825, 3 * HZ);
		FUNC4(regmap);
		/* MCLK not changed by clock tree */
		FUNC9(regmap, NAU8825_REG_CLK_DIVIDER,
			NAU8825_CLK_MCLK_SRC_MASK, 0);
		/* Release the semaphore. */
		FUNC8(nau8825);

		ret = FUNC6(nau8825, freq);
		if (ret)
			return ret;

		break;
	case NAU8825_CLK_INTERNAL:
		if (FUNC5(nau8825->regmap)) {
			FUNC9(regmap, NAU8825_REG_FLL6,
				NAU8825_DCO_EN, NAU8825_DCO_EN);
			FUNC9(regmap, NAU8825_REG_CLK_DIVIDER,
				NAU8825_CLK_SRC_MASK, NAU8825_CLK_SRC_VCO);
			/* Decrease the VCO frequency and make DSP operate
			 * as default setting for power saving.
			 */
			FUNC9(regmap, NAU8825_REG_CLK_DIVIDER,
				NAU8825_CLK_MCLK_SRC_MASK, 0xf);
			FUNC9(regmap, NAU8825_REG_FLL1,
				NAU8825_ICTRL_LATCH_MASK |
				NAU8825_FLL_RATIO_MASK, 0x10);
			FUNC9(regmap, NAU8825_REG_FLL6,
				NAU8825_SDM_EN, NAU8825_SDM_EN);
		} else {
			/* The clock turns off intentionally for power saving
			 * when no headset connected.
			 */
			FUNC4(regmap);
			FUNC3(nau8825->dev, "Disable clock for power saving when no headset connected\n");
		}
		if (nau8825->mclk_freq) {
			FUNC0(nau8825->mclk);
			nau8825->mclk_freq = 0;
		}

		break;
	case NAU8825_CLK_FLL_MCLK:
		/* Acquire the semaphore to synchronize the playback and
		 * interrupt handler. In order to avoid the playback inter-
		 * fered by cross talk process, the driver make the playback
		 * preparation halted until cross talk process finish.
		 */
		FUNC7(nau8825, 3 * HZ);
		/* Higher FLL reference input frequency can only set lower
		 * gain error, such as 0000 for input reference from MCLK
		 * 12.288Mhz.
		 */
		FUNC9(regmap, NAU8825_REG_FLL3,
			NAU8825_FLL_CLK_SRC_MASK | NAU8825_GAIN_ERR_MASK,
			NAU8825_FLL_CLK_SRC_MCLK | 0);
		/* Release the semaphore. */
		FUNC8(nau8825);

		ret = FUNC6(nau8825, freq);
		if (ret)
			return ret;

		break;
	case NAU8825_CLK_FLL_BLK:
		/* Acquire the semaphore to synchronize the playback and
		 * interrupt handler. In order to avoid the playback inter-
		 * fered by cross talk process, the driver make the playback
		 * preparation halted until cross talk process finish.
		 */
		FUNC7(nau8825, 3 * HZ);
		/* If FLL reference input is from low frequency source,
		 * higher error gain can apply such as 0xf which has
		 * the most sensitive gain error correction threshold,
		 * Therefore, FLL has the most accurate DCO to
		 * target frequency.
		 */
		FUNC9(regmap, NAU8825_REG_FLL3,
			NAU8825_FLL_CLK_SRC_MASK | NAU8825_GAIN_ERR_MASK,
			NAU8825_FLL_CLK_SRC_BLK |
			(0xf << NAU8825_GAIN_ERR_SFT));
		/* Release the semaphore. */
		FUNC8(nau8825);

		if (nau8825->mclk_freq) {
			FUNC0(nau8825->mclk);
			nau8825->mclk_freq = 0;
		}

		break;
	case NAU8825_CLK_FLL_FS:
		/* Acquire the semaphore to synchronize the playback and
		 * interrupt handler. In order to avoid the playback inter-
		 * fered by cross talk process, the driver make the playback
		 * preparation halted until cross talk process finish.
		 */
		FUNC7(nau8825, 3 * HZ);
		/* If FLL reference input is from low frequency source,
		 * higher error gain can apply such as 0xf which has
		 * the most sensitive gain error correction threshold,
		 * Therefore, FLL has the most accurate DCO to
		 * target frequency.
		 */
		FUNC9(regmap, NAU8825_REG_FLL3,
			NAU8825_FLL_CLK_SRC_MASK | NAU8825_GAIN_ERR_MASK,
			NAU8825_FLL_CLK_SRC_FS |
			(0xf << NAU8825_GAIN_ERR_SFT));
		/* Release the semaphore. */
		FUNC8(nau8825);

		if (nau8825->mclk_freq) {
			FUNC0(nau8825->mclk);
			nau8825->mclk_freq = 0;
		}

		break;
	default:
		FUNC2(nau8825->dev, "Invalid clock id (%d)\n", clk_id);
		return -EINVAL;
	}

	FUNC1(nau8825->dev, "Sysclk is %dHz and clock id is %d\n", freq,
		clk_id);
	return 0;
}