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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_regs volatile*) ; 

int FUNC1(volatile struct pt_regs* ctx)
{
	int i, j, sum = 0, m;

	for (j = 0; j < 300; j++)
		for (i = 0; i < j; i++) {
			if (j & 1)
				m = FUNC0(ctx);
			else
				m = j;
			sum += i * m;
		}

	return sum;
}