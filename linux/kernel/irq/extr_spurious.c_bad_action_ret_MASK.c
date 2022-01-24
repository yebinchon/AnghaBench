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
typedef  unsigned int irqreturn_t ;

/* Variables and functions */
 unsigned int IRQ_HANDLED ; 
 unsigned int IRQ_WAKE_THREAD ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static inline int FUNC1(irqreturn_t action_ret)
{
	unsigned int r = action_ret;

	if (FUNC0(r <= (IRQ_HANDLED | IRQ_WAKE_THREAD)))
		return 0;
	return 1;
}