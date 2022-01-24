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
typedef  long s64 ;

/* Variables and functions */
 int /*<<< orphan*/  MAXFREQ_SCALED ; 
 int /*<<< orphan*/  MAXPHASE ; 
 long NSEC_PER_USEC ; 
 int /*<<< orphan*/  NTP_INTERVAL_FREQ ; 
 int NTP_SCALE_SHIFT ; 
 int SHIFT_PLL ; 
 int STA_FREQHOLD ; 
 int STA_NANO ; 
 int STA_PLL ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 scalar_t__ FUNC0 () ; 
 long FUNC1 (long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (long,int /*<<< orphan*/ ) ; 
 long FUNC3 (long,int /*<<< orphan*/ ) ; 
 long FUNC4 (long,int /*<<< orphan*/ ) ; 
 long FUNC5 (long,long) ; 
 int time_constant ; 
 long time_freq ; 
 int /*<<< orphan*/  time_offset ; 
 scalar_t__ time_reftime ; 
 int time_status ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(long offset)
{
	s64 freq_adj;
	s64 offset64;
	long secs;

	if (!(time_status & STA_PLL))
		return;

	if (!(time_status & STA_NANO)) {
		/* Make sure the multiplication below won't overflow */
		offset = FUNC1(offset, -USEC_PER_SEC, USEC_PER_SEC);
		offset *= NSEC_PER_USEC;
	}

	/*
	 * Scale the phase adjustment and
	 * clamp to the operating range.
	 */
	offset = FUNC1(offset, -MAXPHASE, MAXPHASE);

	/*
	 * Select how the frequency is to be controlled
	 * and in which mode (PLL or FLL).
	 */
	secs = (long)(FUNC0() - time_reftime);
	if (FUNC6(time_status & STA_FREQHOLD))
		secs = 0;

	time_reftime = FUNC0();

	offset64    = offset;
	freq_adj    = FUNC5(offset64, secs);

	/*
	 * Clamp update interval to reduce PLL gain with low
	 * sampling rate (e.g. intermittent network connection)
	 * to avoid instability.
	 */
	if (FUNC6(secs > 1 << (SHIFT_PLL + 1 + time_constant)))
		secs = 1 << (SHIFT_PLL + 1 + time_constant);

	freq_adj    += (offset64 * secs) <<
			(NTP_SCALE_SHIFT - 2 * (SHIFT_PLL + 2 + time_constant));

	freq_adj    = FUNC4(freq_adj + time_freq, MAXFREQ_SCALED);

	time_freq   = FUNC3(freq_adj, -MAXFREQ_SCALED);

	time_offset = FUNC2(offset64 << NTP_SCALE_SHIFT, NTP_INTERVAL_FREQ);
}