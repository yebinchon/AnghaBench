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
typedef  int u16 ;
struct omap_mcbsp {TYPE_1__* pdata; scalar_t__ st_data; } ;
struct TYPE_2__ {scalar_t__ has_ccr; } ;

/* Variables and functions */
 int CLKRM ; 
 int CLKXM ; 
 int FSRM ; 
 int FSXM ; 
 int FUNC0 (struct omap_mcbsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_mcbsp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PCR0 ; 
 int /*<<< orphan*/  RCCR ; 
 int RDISABLE ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  SPCR1 ; 
 int /*<<< orphan*/  SPCR2 ; 
 int /*<<< orphan*/  XCCR ; 
 int XDISABLE ; 
 int /*<<< orphan*/  FUNC2 (struct omap_mcbsp*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_mcbsp*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct omap_mcbsp *mcbsp, int stream)
{
	int tx = (stream == SNDRV_PCM_STREAM_PLAYBACK);
	int rx = !tx;
	int enable_srg = 0;
	u16 w;

	if (mcbsp->st_data)
		FUNC3(mcbsp);

	/* Only enable SRG, if McBSP is master */
	w = FUNC0(mcbsp, PCR0);
	if (w & (FSXM | FSRM | CLKXM | CLKRM))
		enable_srg = !((FUNC0(mcbsp, SPCR2) |
				FUNC0(mcbsp, SPCR1)) & 1);

	if (enable_srg) {
		/* Start the sample generator */
		w = FUNC0(mcbsp, SPCR2);
		FUNC1(mcbsp, SPCR2, w | (1 << 6));
	}

	/* Enable transmitter and receiver */
	tx &= 1;
	w = FUNC0(mcbsp, SPCR2);
	FUNC1(mcbsp, SPCR2, w | tx);

	rx &= 1;
	w = FUNC0(mcbsp, SPCR1);
	FUNC1(mcbsp, SPCR1, w | rx);

	/*
	 * Worst case: CLKSRG*2 = 8000khz: (1/8000) * 2 * 2 usec
	 * REVISIT: 100us may give enough time for two CLKSRG, however
	 * due to some unknown PM related, clock gating etc. reason it
	 * is now at 500us.
	 */
	FUNC4(500);

	if (enable_srg) {
		/* Start frame sync */
		w = FUNC0(mcbsp, SPCR2);
		FUNC1(mcbsp, SPCR2, w | (1 << 7));
	}

	if (mcbsp->pdata->has_ccr) {
		/* Release the transmitter and receiver */
		w = FUNC0(mcbsp, XCCR);
		w &= ~(tx ? XDISABLE : 0);
		FUNC1(mcbsp, XCCR, w);
		w = FUNC0(mcbsp, RCCR);
		w &= ~(rx ? RDISABLE : 0);
		FUNC1(mcbsp, RCCR, w);
	}

	/* Dump McBSP Regs */
	FUNC2(mcbsp);
}