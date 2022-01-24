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
 unsigned long RCU_SEQ_STATE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(unsigned long *sp, unsigned long s)
{
	return FUNC1((s - 1) & ~RCU_SEQ_STATE_MASK, FUNC0(*sp));
}