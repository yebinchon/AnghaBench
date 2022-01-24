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
typedef  int uint64_t ;
struct uniperif {int clk_adj; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct uniperif *player, unsigned long rate)
{
	int rate_adjusted, rate_achieved, delta, ret;
	int adjustment = player->clk_adj;

	/*
	 *             a
	 * F = f + --------- * f = f + d
	 *          1000000
	 *
	 *         a
	 * d = --------- * f
	 *      1000000
	 *
	 * where:
	 *   f - nominal rate
	 *   a - adjustment in ppm (parts per milion)
	 *   F - rate to be set in synthesizer
	 *   d - delta (difference) between f and F
	 */
	if (adjustment < 0) {
		/* div64_64 operates on unsigned values... */
		delta = -1;
		adjustment = -adjustment;
	} else {
		delta = 1;
	}
	/* 500000 ppm is 0.5, which is used to round up values */
	delta *= (int)FUNC2((uint64_t)rate *
				(uint64_t)adjustment + 500000, 1000000);
	rate_adjusted = rate + delta;

	/* Adjusted rate should never be == 0 */
	if (!rate_adjusted)
		return -EINVAL;

	ret = FUNC1(player->clk, rate_adjusted);
	if (ret < 0)
		return ret;

	rate_achieved = FUNC0(player->clk);
	if (!rate_achieved)
		/* If value is 0 means that clock or parent not valid */
		return -EINVAL;

	/*
	 * Using ALSA's adjustment control, we can modify the rate to be up
	 * to twice as much as requested, but no more
	 */
	delta = rate_achieved - rate;
	if (delta < 0) {
		/* div64_64 operates on unsigned values... */
		delta = -delta;
		adjustment = -1;
	} else {
		adjustment = 1;
	}
	/* Frequency/2 is added to round up result */
	adjustment *= (int)FUNC2((uint64_t)delta * 1000000 + rate / 2,
				     rate);
	player->clk_adj = adjustment;
	return 0;
}