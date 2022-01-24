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
typedef  int __u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pt_regs volatile*) ; 

int FUNC1(volatile struct pt_regs* ctx)
{
	__u64 i = 0, sum = 0;
	do {
		i++;
		sum += FUNC0(ctx);
	} while (i < 0x100000000ULL);
	return sum;
}