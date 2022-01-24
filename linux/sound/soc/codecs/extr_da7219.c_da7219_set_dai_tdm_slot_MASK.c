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
typedef  unsigned int u8 ;
typedef  unsigned long u32 ;
typedef  unsigned int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int /*<<< orphan*/  dev; } ;
struct da7219_priv {int tdm_en; int /*<<< orphan*/  regmap; scalar_t__ master; struct clk** dai_clks; } ;
struct clk {int dummy; } ;
typedef  int /*<<< orphan*/  dai_offset ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 size_t DA7219_DAI_BCLK_IDX ; 
 int /*<<< orphan*/  DA7219_DAI_OFFSET_LOWER ; 
 unsigned int DA7219_DAI_OFFSET_MAX ; 
 unsigned int DA7219_DAI_TDM_CH_EN_MASK ; 
 unsigned int DA7219_DAI_TDM_CH_EN_SHIFT ; 
 int /*<<< orphan*/  DA7219_DAI_TDM_CTRL ; 
 scalar_t__ DA7219_DAI_TDM_MAX_SLOTS ; 
 unsigned int DA7219_DAI_TDM_MODE_EN_MASK ; 
 size_t DA7219_DAI_WCLK_IDX ; 
 int EINVAL ; 
 unsigned long FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int FUNC3 (struct snd_soc_component*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long,...) ; 
 unsigned int FUNC5 (unsigned int) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct da7219_priv* FUNC8 (struct snd_soc_component*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_soc_component*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC10(struct snd_soc_dai *dai,
				   unsigned int tx_mask, unsigned int rx_mask,
				   int slots, int slot_width)
{
	struct snd_soc_component *component = dai->component;
	struct da7219_priv *da7219 = FUNC8(component);
	struct clk *wclk = da7219->dai_clks[DA7219_DAI_WCLK_IDX];
	struct clk *bclk = da7219->dai_clks[DA7219_DAI_BCLK_IDX];
	unsigned int ch_mask;
	unsigned long sr, bclk_rate;
	u8 slot_offset;
	u16 offset;
	__le16 dai_offset;
	u32 frame_size;
	int ret;

	/* No channels enabled so disable TDM */
	if (!tx_mask) {
		FUNC9(component, DA7219_DAI_TDM_CTRL,
				    DA7219_DAI_TDM_CH_EN_MASK |
				    DA7219_DAI_TDM_MODE_EN_MASK, 0);
		da7219->tdm_en = false;
		return 0;
	}

	/* Check we have valid slots */
	slot_offset = FUNC5(tx_mask) - 1;
	ch_mask = (tx_mask >> slot_offset);
	if (FUNC6(ch_mask) > DA7219_DAI_TDM_MAX_SLOTS) {
		FUNC4(component->dev,
			"Invalid number of slots, max = %d\n",
			DA7219_DAI_TDM_MAX_SLOTS);
		return -EINVAL;
	}

	/*
	 * Ensure we have a valid offset into the frame, based on slot width
	 * and slot offset of first slot we're interested in.
	 */
	offset = slot_offset * slot_width;
	if (offset > DA7219_DAI_OFFSET_MAX) {
		FUNC4(component->dev, "Invalid frame offset %d\n", offset);
		return -EINVAL;
	}

	/*
	 * If we're master, calculate & validate frame size based on slot info
	 * provided as we have a limited set of rates available.
	 */
	if (da7219->master) {
		frame_size = slots * slot_width;

		if (bclk) {
			sr = FUNC0(wclk);
			bclk_rate = sr * frame_size;
			ret = FUNC1(bclk, bclk_rate);
			if (ret) {
				FUNC4(component->dev,
					"Failed to set TDM BCLK rate %lu: %d\n",
					bclk_rate, ret);
				return ret;
			}
		} else {
			ret = FUNC3(component, frame_size);
			if (ret) {
				FUNC4(component->dev,
					"Failed to set TDM BCLKs per WCLK %d: %d\n",
					frame_size, ret);
				return ret;
			}
		}
	}

	dai_offset = FUNC2(offset);
	FUNC7(da7219->regmap, DA7219_DAI_OFFSET_LOWER,
			  &dai_offset, sizeof(dai_offset));

	FUNC9(component, DA7219_DAI_TDM_CTRL,
			    DA7219_DAI_TDM_CH_EN_MASK |
			    DA7219_DAI_TDM_MODE_EN_MASK,
			    (ch_mask << DA7219_DAI_TDM_CH_EN_SHIFT) |
			    DA7219_DAI_TDM_MODE_EN_MASK);

	da7219->tdm_en = true;

	return 0;
}