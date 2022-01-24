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

/* Variables and functions */
 int RCU_SEQ_STATE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(unsigned long *sp, int newstate)
{
	FUNC0(newstate & ~RCU_SEQ_STATE_MASK);
	FUNC1(*sp, (*sp & ~RCU_SEQ_STATE_MASK) + newstate);
}