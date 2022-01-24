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
typedef  int u32 ;
struct davinci_mcasp {int slot_width; int max_format_width; int dai_fmt; scalar_t__ op_mode; } ;

/* Variables and functions */
 scalar_t__ DAVINCI_MCASP_DIT_MODE ; 
 int /*<<< orphan*/  DAVINCI_MCASP_RXFMT_REG ; 
 int /*<<< orphan*/  DAVINCI_MCASP_RXMASK_REG ; 
 int /*<<< orphan*/  DAVINCI_MCASP_TXFMT_REG ; 
 int /*<<< orphan*/  DAVINCI_MCASP_TXMASK_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SND_SOC_DAIFMT_FORMAT_MASK ; 
 int SND_SOC_DAIFMT_RIGHT_J ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct davinci_mcasp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct davinci_mcasp*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct davinci_mcasp *mcasp,
				       int sample_width)
{
	u32 fmt;
	u32 tx_rotate, rx_rotate, slot_width;
	u32 mask = (1ULL << sample_width) - 1;

	if (mcasp->slot_width)
		slot_width = mcasp->slot_width;
	else if (mcasp->max_format_width)
		slot_width = mcasp->max_format_width;
	else
		slot_width = sample_width;
	/*
	 * TX rotation:
	 * right aligned formats: rotate w/ slot_width
	 * left aligned formats: rotate w/ sample_width
	 *
	 * RX rotation:
	 * right aligned formats: no rotation needed
	 * left aligned formats: rotate w/ (slot_width - sample_width)
	 */
	if ((mcasp->dai_fmt & SND_SOC_DAIFMT_FORMAT_MASK) ==
	    SND_SOC_DAIFMT_RIGHT_J) {
		tx_rotate = (slot_width / 4) & 0x7;
		rx_rotate = 0;
	} else {
		tx_rotate = (sample_width / 4) & 0x7;
		rx_rotate = (slot_width - sample_width) / 4;
	}

	/* mapping of the XSSZ bit-field as described in the datasheet */
	fmt = (slot_width >> 1) - 1;

	if (mcasp->op_mode != DAVINCI_MCASP_DIT_MODE) {
		FUNC4(mcasp, DAVINCI_MCASP_RXFMT_REG, FUNC1(fmt),
			       FUNC1(0x0F));
		FUNC4(mcasp, DAVINCI_MCASP_TXFMT_REG, FUNC3(fmt),
			       FUNC3(0x0F));
		FUNC4(mcasp, DAVINCI_MCASP_TXFMT_REG, FUNC2(tx_rotate),
			       FUNC2(7));
		FUNC4(mcasp, DAVINCI_MCASP_RXFMT_REG, FUNC0(rx_rotate),
			       FUNC0(7));
		FUNC5(mcasp, DAVINCI_MCASP_RXMASK_REG, mask);
	}

	FUNC5(mcasp, DAVINCI_MCASP_TXMASK_REG, mask);

	return 0;
}