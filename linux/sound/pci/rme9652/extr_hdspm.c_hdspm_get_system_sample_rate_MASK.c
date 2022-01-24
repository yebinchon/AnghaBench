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
struct hdspm {unsigned int system_sample_rate; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct hdspm*) ; 
 unsigned int FUNC1 (struct hdspm*) ; 
 scalar_t__ FUNC2 (struct hdspm*) ; 

__attribute__((used)) static int FUNC3(struct hdspm *hdspm)
{
	unsigned int rate;

	rate = FUNC1(hdspm);

	if (rate > 207000) {
		/* Unreasonable high sample rate as seen on PCI MADI cards. */
		if (0 == FUNC2(hdspm)) {
			/* master mode, return internal sample rate */
			rate = hdspm->system_sample_rate;
		} else {
			/* slave mode, return external sample rate */
			rate = FUNC0(hdspm);
			if (!rate)
				rate = hdspm->system_sample_rate;
		}
	}

	return rate;
}