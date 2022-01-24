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
struct pcxhr_mgr {int board_has_analog; int board_has_mic; int dsp_reset; TYPE_1__* pci; int /*<<< orphan*/  xlx_cfg; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AKM_CLOCK_INF_55K_CMD ; 
 int /*<<< orphan*/  AKM_POWER_CONTROL_CMD ; 
 int /*<<< orphan*/  AKM_RESET_OFF_CMD ; 
 int /*<<< orphan*/  AKM_UNMUTE_CMD ; 
 int /*<<< orphan*/  PCXHR_CFG_SYNCDSP_MASK ; 
 int /*<<< orphan*/  PCXHR_DSP_RESET ; 
 int PCXHR_DSP_RESET_CODEC ; 
 int PCXHR_DSP_RESET_DSP ; 
 int PCXHR_DSP_RESET_MUTE ; 
 unsigned char FUNC0 (struct pcxhr_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcxhr_mgr*,int /*<<< orphan*/ ,int) ; 
 unsigned char PCXHR_STAT_MIC_CAPS ; 
 int /*<<< orphan*/  PCXHR_XLX_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pcxhr_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pcxhr_mgr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(struct pcxhr_mgr *mgr)
{
	unsigned char reg;

	mgr->board_has_analog = 1;	/* analog always available */
	mgr->xlx_cfg = PCXHR_CFG_SYNCDSP_MASK;

	reg = FUNC0(mgr, PCXHR_XLX_STATUS);
	if (reg & PCXHR_STAT_MIC_CAPS)
		mgr->board_has_mic = 1;	/* microphone available */
	FUNC2(&mgr->pci->dev,
		"MIC input available = %d\n", mgr->board_has_mic);

	/* reset codec */
	FUNC1(mgr, PCXHR_DSP_RESET,
		    PCXHR_DSP_RESET_DSP);
	FUNC5(5);
	mgr->dsp_reset = PCXHR_DSP_RESET_DSP  |
			 PCXHR_DSP_RESET_MUTE |
			 PCXHR_DSP_RESET_CODEC;
	FUNC1(mgr, PCXHR_DSP_RESET, mgr->dsp_reset);
	/* hr222_write_gpo(mgr, 0); does the same */
	FUNC5(5);

	/* config AKM */
	FUNC3(mgr, AKM_POWER_CONTROL_CMD);
	FUNC3(mgr, AKM_CLOCK_INF_55K_CMD);
	FUNC3(mgr, AKM_UNMUTE_CMD);
	FUNC3(mgr, AKM_RESET_OFF_CMD);

	/* init micro boost */
	FUNC4(mgr, 0);

	return 0;
}