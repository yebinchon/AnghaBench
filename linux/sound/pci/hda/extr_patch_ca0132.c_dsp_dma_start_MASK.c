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
 unsigned int DSPDMAC_CHNLSTART_DIS_MASK ; 
 unsigned int DSPDMAC_CHNLSTART_EN_LOBIT ; 
 unsigned int DSPDMAC_CHNLSTART_EN_MASK ; 
 int /*<<< orphan*/  DSPDMAC_CHNLSTART_INST_OFFSET ; 
 int FUNC0 (struct hda_codec*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC1 (struct hda_codec*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_codec*,char*) ; 

__attribute__((used)) static int FUNC3(struct hda_codec *codec,
			 unsigned int dma_chan, bool ovly)
{
	unsigned int reg = 0;
	int status = 0;

	FUNC2(codec, "-- dsp_dma_start() -- Begin ---------\n");

	if (ovly) {
		status = FUNC0(codec,
				     DSPDMAC_CHNLSTART_INST_OFFSET, &reg);

		if (status < 0) {
			FUNC2(codec, "read CHNLSTART reg fail\n");
			return status;
		}
		FUNC2(codec, "-- dsp_dma_start()    Read CHNLSTART\n");

		reg &= ~(DSPDMAC_CHNLSTART_EN_MASK |
				DSPDMAC_CHNLSTART_DIS_MASK);
	}

	status = FUNC1(codec, DSPDMAC_CHNLSTART_INST_OFFSET,
			reg | (1 << (dma_chan + DSPDMAC_CHNLSTART_EN_LOBIT)));
	if (status < 0) {
		FUNC2(codec, "write CHNLSTART reg fail\n");
		return status;
	}
	FUNC2(codec, "-- dsp_dma_start() -- Complete ---------\n");

	return status;
}