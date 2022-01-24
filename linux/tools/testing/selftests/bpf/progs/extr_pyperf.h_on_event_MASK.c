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
 int FUNC0 (struct pt_regs*) ; 

int FUNC1(struct pt_regs* ctx)
{
	int i, ret = 0;
	ret |= FUNC0(ctx);
	ret |= FUNC0(ctx);
	ret |= FUNC0(ctx);
	ret |= FUNC0(ctx);
	ret |= FUNC0(ctx);
	return ret;
}