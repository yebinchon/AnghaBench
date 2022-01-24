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
struct snd_korg1212 {size_t clkSource; int clkSrcRate; int clkRate; size_t cardState; } ;
typedef  enum ClockSourceIndex { ____Placeholder_ClockSourceIndex } ClockSourceIndex ;

/* Variables and functions */
 int /*<<< orphan*/ * ClockSourceSelector ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  INTERCOMMAND_DELAY ; 
#define  K1212_CLKIDX_AdatAt44_1K 133 
#define  K1212_CLKIDX_AdatAt48K 132 
#define  K1212_CLKIDX_LocalAt44_1K 131 
#define  K1212_CLKIDX_LocalAt48K 130 
#define  K1212_CLKIDX_WordAt44_1K 129 
#define  K1212_CLKIDX_WordAt48K 128 
 int /*<<< orphan*/  K1212_DB_SetClockSourceRate ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_korg1212*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_korg1212*) ; 
 int /*<<< orphan*/ * stateName ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct snd_korg1212 *korg1212, int rate)
{
        static enum ClockSourceIndex s44[] = {
		K1212_CLKIDX_AdatAt44_1K,
		K1212_CLKIDX_WordAt44_1K,
		K1212_CLKIDX_LocalAt44_1K
	};
        static enum ClockSourceIndex s48[] = {
		K1212_CLKIDX_AdatAt48K,
		K1212_CLKIDX_WordAt48K,
		K1212_CLKIDX_LocalAt48K
	};
        int parm, rc;

	if (!FUNC2 (korg1212))
		return -EBUSY;

	switch (rate) {
	case 44100:
		parm = s44[korg1212->clkSource];
		break;

	case 48000:
		parm = s48[korg1212->clkSource];
		break;

	default:
		return -EINVAL;
	}

        korg1212->clkSrcRate = parm;
        korg1212->clkRate = rate;

	FUNC3(INTERCOMMAND_DELAY);
	rc = FUNC1(korg1212, K1212_DB_SetClockSourceRate,
					  ClockSourceSelector[korg1212->clkSrcRate],
					  0, 0, 0);
	if (rc)
		FUNC0("K1212_DEBUG: Set Clock Source Selector - RC = %d [%s]\n",
				   rc, stateName[korg1212->cardState]);

        return 0;
}