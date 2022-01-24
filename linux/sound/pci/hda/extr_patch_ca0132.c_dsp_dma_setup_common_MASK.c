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
struct hda_codec {int dummy; } ;

/* Variables and functions */
 unsigned int DSPDMAC_ACTIVE_AAR_LOBIT ; 
 int DSPDMAC_ACTIVE_AAR_MASK ; 
 int /*<<< orphan*/  DSPDMAC_ACTIVE_INST_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int DSPDMAC_CHNLPROP_AC_MASK ; 
 unsigned int DSPDMAC_CHNLPROP_DCON_LOBIT ; 
 int /*<<< orphan*/  DSPDMAC_CHNLPROP_INST_OFFSET ; 
 unsigned int DSPDMAC_CHNLPROP_MSPCE_LOBIT ; 
 unsigned int DSPDMAC_DMA_CFG_CHANNEL_COUNT ; 
 unsigned int DSPDMAC_IRQCNT_BICNT_MASK ; 
 unsigned int DSPDMAC_IRQCNT_CICNT_MASK ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENXIO ; 
 unsigned int INVALID_CHIP_ADDRESS ; 
 int FUNC2 (struct hda_codec*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC3 (struct hda_codec*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct hda_codec*,char*,...) ; 
 unsigned int FUNC5 (unsigned int,int*,int*) ; 
 scalar_t__ FUNC6 (struct hda_codec*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct hda_codec *codec,
				unsigned int chip_addx,
				unsigned int dma_chan,
				unsigned int port_map_mask,
				bool ovly)
{
	int status = 0;
	unsigned int chnl_prop;
	unsigned int dsp_addx;
	unsigned int active;
	bool code, yram;

	FUNC4(codec, "-- dsp_dma_setup_common() -- Begin ---------\n");

	if (dma_chan >= DSPDMAC_DMA_CFG_CHANNEL_COUNT) {
		FUNC4(codec, "dma chan num invalid\n");
		return -EINVAL;
	}

	if (FUNC6(codec, dma_chan)) {
		FUNC4(codec, "dma already active\n");
		return -EBUSY;
	}

	dsp_addx = FUNC5(chip_addx, &code, &yram);

	if (dsp_addx == INVALID_CHIP_ADDRESS) {
		FUNC4(codec, "invalid chip addr\n");
		return -ENXIO;
	}

	chnl_prop = DSPDMAC_CHNLPROP_AC_MASK;
	active = 0;

	FUNC4(codec, "   dsp_dma_setup_common()    start reg pgm\n");

	if (ovly) {
		status = FUNC2(codec, DSPDMAC_CHNLPROP_INST_OFFSET,
				     &chnl_prop);

		if (status < 0) {
			FUNC4(codec, "read CHNLPROP Reg fail\n");
			return status;
		}
		FUNC4(codec, "dsp_dma_setup_common() Read CHNLPROP\n");
	}

	if (!code)
		chnl_prop &= ~(1 << (DSPDMAC_CHNLPROP_MSPCE_LOBIT + dma_chan));
	else
		chnl_prop |=  (1 << (DSPDMAC_CHNLPROP_MSPCE_LOBIT + dma_chan));

	chnl_prop &= ~(1 << (DSPDMAC_CHNLPROP_DCON_LOBIT + dma_chan));

	status = FUNC3(codec, DSPDMAC_CHNLPROP_INST_OFFSET, chnl_prop);
	if (status < 0) {
		FUNC4(codec, "write CHNLPROP Reg fail\n");
		return status;
	}
	FUNC4(codec, "   dsp_dma_setup_common()    Write CHNLPROP\n");

	if (ovly) {
		status = FUNC2(codec, DSPDMAC_ACTIVE_INST_OFFSET,
				     &active);

		if (status < 0) {
			FUNC4(codec, "read ACTIVE Reg fail\n");
			return status;
		}
		FUNC4(codec, "dsp_dma_setup_common() Read ACTIVE\n");
	}

	active &= (~(1 << (DSPDMAC_ACTIVE_AAR_LOBIT + dma_chan))) &
		DSPDMAC_ACTIVE_AAR_MASK;

	status = FUNC3(codec, DSPDMAC_ACTIVE_INST_OFFSET, active);
	if (status < 0) {
		FUNC4(codec, "write ACTIVE Reg fail\n");
		return status;
	}

	FUNC4(codec, "   dsp_dma_setup_common()    Write ACTIVE\n");

	status = FUNC3(codec, FUNC0(dma_chan),
			      port_map_mask);
	if (status < 0) {
		FUNC4(codec, "write AUDCHSEL Reg fail\n");
		return status;
	}
	FUNC4(codec, "   dsp_dma_setup_common()    Write AUDCHSEL\n");

	status = FUNC3(codec, FUNC1(dma_chan),
			DSPDMAC_IRQCNT_BICNT_MASK | DSPDMAC_IRQCNT_CICNT_MASK);
	if (status < 0) {
		FUNC4(codec, "write IRQCNT Reg fail\n");
		return status;
	}
	FUNC4(codec, "   dsp_dma_setup_common()    Write IRQCNT\n");

	FUNC4(codec,
		   "ChipA=0x%x,DspA=0x%x,dmaCh=%u, "
		   "CHSEL=0x%x,CHPROP=0x%x,Active=0x%x\n",
		   chip_addx, dsp_addx, dma_chan,
		   port_map_mask, chnl_prop, active);

	FUNC4(codec, "-- dsp_dma_setup_common() -- Complete ------\n");

	return 0;
}