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
 int FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline unsigned long FUNC2(unsigned long *sp)
{
	unsigned long s;

	s = (FUNC0(*sp) + 2 * RCU_SEQ_STATE_MASK + 1) & ~RCU_SEQ_STATE_MASK;
	FUNC1(); /* Above access must not bleed into critical section. */
	return s;
}