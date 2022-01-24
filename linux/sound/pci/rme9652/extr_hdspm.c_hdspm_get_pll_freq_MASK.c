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
struct hdspm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDSPM_RD_PLL_FREQ ; 
 unsigned int FUNC0 (struct hdspm*,unsigned int) ; 
 unsigned int FUNC1 (struct hdspm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct hdspm *hdspm)
{
	unsigned int period, rate;

	period = FUNC1(hdspm, HDSPM_RD_PLL_FREQ);
	rate = FUNC0(hdspm, period);

	return rate;
}