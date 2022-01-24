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
struct clk {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long) ; 
 long FUNC1 (struct clk*,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct clk *clk,
					  unsigned long rate,
					  struct clk **best_clk,
					  unsigned long *best_rate,
					  unsigned long *best_diff_rate)
{
	long round_rate;
	unsigned int diff_rate;

	round_rate = FUNC1(clk, rate);
	if (round_rate < 0)
		return (int)round_rate;

	diff_rate = FUNC0(rate - round_rate);
	if (diff_rate < *best_diff_rate) {
		*best_clk = clk;
		*best_diff_rate = diff_rate;
		*best_rate = rate;
	}

	return 0;
}