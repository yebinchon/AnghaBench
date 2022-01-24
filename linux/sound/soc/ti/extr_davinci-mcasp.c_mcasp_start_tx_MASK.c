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
struct davinci_mcasp {int fifo_base; int /*<<< orphan*/ * irq_request; scalar_t__ txnumevt; } ;

/* Variables and functions */
 int DAVINCI_MCASP_EVTCTLX_REG ; 
 int /*<<< orphan*/  DAVINCI_MCASP_GBLCTLX_REG ; 
 int /*<<< orphan*/  DAVINCI_MCASP_TXSTAT_REG ; 
 int /*<<< orphan*/  FIFO_ENABLE ; 
 int MCASP_WFIFOCTL_OFFSET ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  TXCLKRST ; 
 int /*<<< orphan*/  TXFSRST ; 
 int /*<<< orphan*/  TXHCLKRST ; 
 int /*<<< orphan*/  TXSERCLR ; 
 int /*<<< orphan*/  TXSMRST ; 
 int XRDATA ; 
 int /*<<< orphan*/  FUNC0 (struct davinci_mcasp*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct davinci_mcasp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_mcasp*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct davinci_mcasp*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct davinci_mcasp*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct davinci_mcasp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct davinci_mcasp*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct davinci_mcasp *mcasp)
{
	u32 cnt;

	if (mcasp->txnumevt) {	/* enable FIFO */
		u32 reg = mcasp->fifo_base + MCASP_WFIFOCTL_OFFSET;

		FUNC0(mcasp, reg, FIFO_ENABLE);
		FUNC3(mcasp, reg, FIFO_ENABLE);
	}

	/* Start clocks */
	FUNC5(mcasp, DAVINCI_MCASP_GBLCTLX_REG, TXHCLKRST);
	FUNC5(mcasp, DAVINCI_MCASP_GBLCTLX_REG, TXCLKRST);
	FUNC4(mcasp, true);

	/* Activate serializer(s) */
	FUNC6(mcasp, DAVINCI_MCASP_TXSTAT_REG, 0xFFFFFFFF);
	FUNC5(mcasp, DAVINCI_MCASP_GBLCTLX_REG, TXSERCLR);

	/* wait for XDATA to be cleared */
	cnt = 0;
	while ((FUNC1(mcasp, DAVINCI_MCASP_TXSTAT_REG) & XRDATA) &&
	       (cnt < 100000))
		cnt++;

	FUNC2(mcasp, true);

	/* Release TX state machine */
	FUNC5(mcasp, DAVINCI_MCASP_GBLCTLX_REG, TXSMRST);
	/* Release Frame Sync generator */
	FUNC5(mcasp, DAVINCI_MCASP_GBLCTLX_REG, TXFSRST);

	/* enable transmit IRQs */
	FUNC3(mcasp, DAVINCI_MCASP_EVTCTLX_REG,
		       mcasp->irq_request[SNDRV_PCM_STREAM_PLAYBACK]);
}