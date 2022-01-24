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
struct __kernel_timex {int modes; int freq; int constant; int /*<<< orphan*/  tick; int /*<<< orphan*/  offset; int /*<<< orphan*/  esterror; int /*<<< orphan*/  maxerror; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int ADJ_ESTERROR ; 
 int ADJ_FREQUENCY ; 
 int ADJ_MAXERROR ; 
 int ADJ_MICRO ; 
 int ADJ_NANO ; 
 int ADJ_OFFSET ; 
 int ADJ_STATUS ; 
 int ADJ_TAI ; 
 int ADJ_TICK ; 
 int ADJ_TIMECONST ; 
 long MAXFREQ_SCALED ; 
 scalar_t__ MAXTC ; 
 scalar_t__ MAX_TAI_OFFSET ; 
 int PPM_SCALE ; 
 int STA_NANO ; 
 int FUNC0 (int,long) ; 
 int FUNC1 (int,long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct __kernel_timex const*) ; 
 int /*<<< orphan*/  tick_usec ; 
 int time_constant ; 
 int /*<<< orphan*/  time_esterror ; 
 int time_freq ; 
 int /*<<< orphan*/  time_maxerror ; 
 int time_status ; 

__attribute__((used)) static inline void FUNC6(const struct __kernel_timex *txc,
					  s32 *time_tai)
{
	if (txc->modes & ADJ_STATUS)
		FUNC5(txc);

	if (txc->modes & ADJ_NANO)
		time_status |= STA_NANO;

	if (txc->modes & ADJ_MICRO)
		time_status &= ~STA_NANO;

	if (txc->modes & ADJ_FREQUENCY) {
		time_freq = txc->freq * PPM_SCALE;
		time_freq = FUNC1(time_freq, MAXFREQ_SCALED);
		time_freq = FUNC0(time_freq, -MAXFREQ_SCALED);
		/* update pps_freq */
		FUNC4(time_freq);
	}

	if (txc->modes & ADJ_MAXERROR)
		time_maxerror = txc->maxerror;

	if (txc->modes & ADJ_ESTERROR)
		time_esterror = txc->esterror;

	if (txc->modes & ADJ_TIMECONST) {
		time_constant = txc->constant;
		if (!(time_status & STA_NANO))
			time_constant += 4;
		time_constant = FUNC1(time_constant, (long)MAXTC);
		time_constant = FUNC0(time_constant, 0l);
	}

	if (txc->modes & ADJ_TAI &&
			txc->constant >= 0 && txc->constant <= MAX_TAI_OFFSET)
		*time_tai = txc->constant;

	if (txc->modes & ADJ_OFFSET)
		FUNC3(txc->offset);

	if (txc->modes & ADJ_TICK)
		tick_usec = txc->tick;

	if (txc->modes & (ADJ_TICK|ADJ_FREQUENCY|ADJ_OFFSET))
		FUNC2();
}