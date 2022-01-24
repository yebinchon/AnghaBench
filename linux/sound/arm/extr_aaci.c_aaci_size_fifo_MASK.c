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
struct aaci_runtime {scalar_t__ base; scalar_t__ fifo; } ;
struct aaci {int maincr; scalar_t__ base; struct aaci_runtime playback; } ;

/* Variables and functions */
 scalar_t__ AACI_MAINCR ; 
 scalar_t__ AACI_SR ; 
 scalar_t__ AACI_TXCR ; 
 int CR_EN ; 
 int CR_FEN ; 
 int CR_SZ16 ; 
 int MAINCR_IE ; 
 int SR_TXFF ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC3(struct aaci *aaci)
{
	struct aaci_runtime *aacirun = &aaci->playback;
	int i;

	/*
	 * Enable the channel, but don't assign it to any slots, so
	 * it won't empty onto the AC'97 link.
	 */
	FUNC2(CR_FEN | CR_SZ16 | CR_EN, aacirun->base + AACI_TXCR);

	for (i = 0; !(FUNC0(aacirun->base + AACI_SR) & SR_TXFF) && i < 4096; i++)
		FUNC2(0, aacirun->fifo);

	FUNC2(0, aacirun->base + AACI_TXCR);

	/*
	 * Re-initialise the AACI after the FIFO depth test, to
	 * ensure that the FIFOs are empty.  Unfortunately, merely
	 * disabling the channel doesn't clear the FIFO.
	 */
	FUNC2(aaci->maincr & ~MAINCR_IE, aaci->base + AACI_MAINCR);
	FUNC0(aaci->base + AACI_MAINCR);
	FUNC1(1);
	FUNC2(aaci->maincr, aaci->base + AACI_MAINCR);

	/*
	 * If we hit 4096 entries, we failed.  Go back to the specified
	 * fifo depth.
	 */
	if (i == 4096)
		i = 8;

	return i;
}