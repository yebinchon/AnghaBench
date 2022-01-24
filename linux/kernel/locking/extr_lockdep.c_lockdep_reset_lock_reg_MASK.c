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
struct pending_free {int dummy; } ;
struct lockdep_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pending_free*,struct lockdep_map*) ; 
 int /*<<< orphan*/  FUNC1 (struct pending_free*) ; 
 struct pending_free* FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

__attribute__((used)) static void FUNC7(struct lockdep_map *lock)
{
	struct pending_free *pf;
	unsigned long flags;
	int locked;

	FUNC6(flags);
	locked = FUNC3();
	if (!locked)
		goto out_irq;

	pf = FUNC2();
	FUNC0(pf, lock);
	FUNC1(pf);

	FUNC4();
out_irq:
	FUNC5(flags);
}