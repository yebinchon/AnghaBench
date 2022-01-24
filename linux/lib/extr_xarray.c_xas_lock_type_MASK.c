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
struct xa_state {int dummy; } ;

/* Variables and functions */
 unsigned int XA_LOCK_BH ; 
 unsigned int XA_LOCK_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct xa_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct xa_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct xa_state*) ; 

__attribute__((used)) static inline void FUNC3(struct xa_state *xas, unsigned int lock_type)
{
	if (lock_type == XA_LOCK_IRQ)
		FUNC2(xas);
	else if (lock_type == XA_LOCK_BH)
		FUNC1(xas);
	else
		FUNC0(xas);
}