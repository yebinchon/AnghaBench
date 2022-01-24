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
typedef  int u64 ;
typedef  int u32 ;
struct clocksource {int mask; int mult; int maxadj; int /*<<< orphan*/  max_idle_ns; int /*<<< orphan*/  max_cycles; int /*<<< orphan*/  name; int /*<<< orphan*/  shift; } ;

/* Variables and functions */
 int NSEC_PER_SEC ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int,int,int) ; 
 void* FUNC2 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC3 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct clocksource *cs, u32 scale, u32 freq)
{
	u64 sec;

	/*
	 * Default clocksources are *special* and self-define their mult/shift.
	 * But, you're not special, so you should specify a freq value.
	 */
	if (freq) {
		/*
		 * Calc the maximum number of seconds which we can run before
		 * wrapping around. For clocksources which have a mask > 32-bit
		 * we need to limit the max sleep time to have a good
		 * conversion precision. 10 minutes is still a reasonable
		 * amount. That results in a shift value of 24 for a
		 * clocksource with mask >= 40-bit and f >= 4GHz. That maps to
		 * ~ 0.06ppm granularity for NTP.
		 */
		sec = cs->mask;
		FUNC4(sec, freq);
		FUNC4(sec, scale);
		if (!sec)
			sec = 1;
		else if (sec > 600 && cs->mask > UINT_MAX)
			sec = 600;

		FUNC1(&cs->mult, &cs->shift, freq,
				       NSEC_PER_SEC / scale, sec * scale);
	}
	/*
	 * Ensure clocksources that have large 'mult' values don't overflow
	 * when adjusted.
	 */
	cs->maxadj = FUNC2(cs);
	while (freq && ((cs->mult + cs->maxadj < cs->mult)
		|| (cs->mult - cs->maxadj > cs->mult))) {
		cs->mult >>= 1;
		cs->shift--;
		cs->maxadj = FUNC2(cs);
	}

	/*
	 * Only warn for *special* clocksources that self-define
	 * their mult/shift values and don't specify a freq.
	 */
	FUNC0(cs->mult + cs->maxadj < cs->mult,
		"timekeeping: Clocksource %s might overflow on 11%% adjustment\n",
		cs->name);

	FUNC3(cs);

	FUNC5("%s: mask: 0x%llx max_cycles: 0x%llx, max_idle_ns: %lld ns\n",
		cs->name, cs->mask, cs->max_cycles, cs->max_idle_ns);
}