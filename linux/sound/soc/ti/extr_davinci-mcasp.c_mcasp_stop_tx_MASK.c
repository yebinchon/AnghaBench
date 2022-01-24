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
struct davinci_mcasp {int fifo_base; scalar_t__ txnumevt; scalar_t__ streams; int /*<<< orphan*/ * irq_request; } ;

/* Variables and functions */
 int DAVINCI_MCASP_EVTCTLX_REG ; 
 int /*<<< orphan*/  DAVINCI_MCASP_GBLCTLX_REG ; 
 int /*<<< orphan*/  DAVINCI_MCASP_TXSTAT_REG ; 
 int /*<<< orphan*/  FIFO_ENABLE ; 
 int MCASP_WFIFOCTL_OFFSET ; 
 size_t SNDRV_PCM_STREAM_PLAYBACK ; 
 int TXCLKRST ; 
 int TXFSRST ; 
 int TXHCLKRST ; 
 int /*<<< orphan*/  FUNC0 (struct davinci_mcasp*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct davinci_mcasp*) ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_mcasp*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct davinci_mcasp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct davinci_mcasp*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct davinci_mcasp *mcasp)
{
	u32 val = 0;

	/* disable IRQ sources */
	FUNC0(mcasp, DAVINCI_MCASP_EVTCTLX_REG,
		       mcasp->irq_request[SNDRV_PCM_STREAM_PLAYBACK]);

	/*
	 * In synchronous mode keep TX clocks running if the capture stream is
	 * still running.
	 */
	if (FUNC1(mcasp) && mcasp->streams)
		val =  TXHCLKRST | TXCLKRST | TXFSRST;
	else
		FUNC3(mcasp, false);


	FUNC4(mcasp, DAVINCI_MCASP_GBLCTLX_REG, val);
	FUNC4(mcasp, DAVINCI_MCASP_TXSTAT_REG, 0xFFFFFFFF);

	if (mcasp->txnumevt) {	/* disable FIFO */
		u32 reg = mcasp->fifo_base + MCASP_WFIFOCTL_OFFSET;

		FUNC0(mcasp, reg, FIFO_ENABLE);
	}

	FUNC2(mcasp, false);
}