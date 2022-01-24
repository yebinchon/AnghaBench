#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct axg_tdm_stream {int physical_width; TYPE_1__* iface; scalar_t__ width; } ;
struct axg_tdm_formatter_hw {unsigned int skew_offset; } ;
struct TYPE_2__ {int fmt; scalar_t__ slots; scalar_t__ slot_width; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SND_SOC_DAIFMT_DSP_A 131 
#define  SND_SOC_DAIFMT_DSP_B 130 
 int SND_SOC_DAIFMT_FORMAT_MASK ; 
#define  SND_SOC_DAIFMT_I2S 129 
#define  SND_SOC_DAIFMT_LEFT_J 128 
 int /*<<< orphan*/  TDMOUT_CTRL0 ; 
 unsigned int FUNC0 (scalar_t__) ; 
 unsigned int TDMOUT_CTRL0_BITNUM_MASK ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int TDMOUT_CTRL0_INIT_BITNUM_MASK ; 
 unsigned int FUNC2 (scalar_t__) ; 
 unsigned int TDMOUT_CTRL0_SLOTNUM_MASK ; 
 int /*<<< orphan*/  TDMOUT_CTRL1 ; 
 unsigned int FUNC3 (scalar_t__) ; 
 unsigned int TDMOUT_CTRL1_MSB_POS_MASK ; 
 unsigned int FUNC4 (int) ; 
 unsigned int TDMOUT_CTRL1_TYPE_MASK ; 
 unsigned int TDMOUT_CTRL1_WS_INV ; 
 int /*<<< orphan*/  TDMOUT_MASK0 ; 
 int /*<<< orphan*/  TDMOUT_SWAP ; 
 int FUNC5 (struct regmap*,struct axg_tdm_stream*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct regmap*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct regmap *map,
			      const struct axg_tdm_formatter_hw *quirks,
			      struct axg_tdm_stream *ts)
{
	unsigned int val, skew = quirks->skew_offset;

	/* Set the stream skew */
	switch (ts->iface->fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
	case SND_SOC_DAIFMT_I2S:
	case SND_SOC_DAIFMT_DSP_A:
		break;

	case SND_SOC_DAIFMT_LEFT_J:
	case SND_SOC_DAIFMT_DSP_B:
		skew += 1;
		break;

	default:
		FUNC7("Unsupported format: %u\n",
		       ts->iface->fmt & SND_SOC_DAIFMT_FORMAT_MASK);
		return -EINVAL;
	}

	val = FUNC1(skew);

	/* Set the slot width */
	val |= FUNC0(ts->iface->slot_width - 1);

	/* Set the slot number */
	val |= FUNC2(ts->iface->slots - 1);

	FUNC8(map, TDMOUT_CTRL0,
			   TDMOUT_CTRL0_INIT_BITNUM_MASK |
			   TDMOUT_CTRL0_BITNUM_MASK |
			   TDMOUT_CTRL0_SLOTNUM_MASK, val);

	/* Set the sample width */
	val = FUNC3(ts->width - 1);

	/* FIFO data are arranged in chunks of 64bits */
	switch (ts->physical_width) {
	case 8:
		/* 8 samples of 8 bits */
		val |= FUNC4(0);
		break;
	case 16:
		/* 4 samples of 16 bits - right justified */
		val |= FUNC4(2);
		break;
	case 32:
		/* 2 samples of 32 bits - right justified */
		val |= FUNC4(4);
		break;
	default:
		FUNC7("Unsupported physical width: %u\n",
		       ts->physical_width);
		return -EINVAL;
	}

	/* If the sample clock is inverted, invert it back for the formatter */
	if (FUNC6(ts->iface->fmt))
		val |= TDMOUT_CTRL1_WS_INV;

	FUNC8(map, TDMOUT_CTRL1,
			   (TDMOUT_CTRL1_TYPE_MASK | TDMOUT_CTRL1_MSB_POS_MASK |
			    TDMOUT_CTRL1_WS_INV), val);

	/* Set static swap mask configuration */
	FUNC9(map, TDMOUT_SWAP, 0x76543210);

	return FUNC5(map, ts, TDMOUT_MASK0);
}