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
struct omap_mcbsp {scalar_t__ st_data; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ has_ccr; } ;

/* Variables and functions */
 int FUNC0 (struct omap_mcbsp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_mcbsp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RCCR ; 
 int RDISABLE ; 
 int SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  SPCR1 ; 
 int /*<<< orphan*/  SPCR2 ; 
 int /*<<< orphan*/  XCCR ; 
 int XDISABLE ; 
 int /*<<< orphan*/  FUNC2 (struct omap_mcbsp*) ; 

__attribute__((used)) static void FUNC3(struct omap_mcbsp *mcbsp, int stream)
{
	int tx = (stream == SNDRV_PCM_STREAM_PLAYBACK);
	int rx = !tx;
	int idle;
	u16 w;

	/* Reset transmitter */
	tx &= 1;
	if (mcbsp->pdata->has_ccr) {
		w = FUNC0(mcbsp, XCCR);
		w |= (tx ? XDISABLE : 0);
		FUNC1(mcbsp, XCCR, w);
	}
	w = FUNC0(mcbsp, SPCR2);
	FUNC1(mcbsp, SPCR2, w & ~tx);

	/* Reset receiver */
	rx &= 1;
	if (mcbsp->pdata->has_ccr) {
		w = FUNC0(mcbsp, RCCR);
		w |= (rx ? RDISABLE : 0);
		FUNC1(mcbsp, RCCR, w);
	}
	w = FUNC0(mcbsp, SPCR1);
	FUNC1(mcbsp, SPCR1, w & ~rx);

	idle = !((FUNC0(mcbsp, SPCR2) |
			FUNC0(mcbsp, SPCR1)) & 1);

	if (idle) {
		/* Reset the sample rate generator */
		w = FUNC0(mcbsp, SPCR2);
		FUNC1(mcbsp, SPCR2, w & ~(1 << 6));
	}

	if (mcbsp->st_data)
		FUNC2(mcbsp);
}