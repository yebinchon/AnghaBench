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
struct ucounts {int /*<<< orphan*/  node; scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ucounts*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  ucounts_lock ; 

__attribute__((used)) static void FUNC4(struct ucounts *ucounts)
{
	unsigned long flags;

	FUNC2(&ucounts_lock, flags);
	ucounts->count -= 1;
	if (!ucounts->count)
		FUNC0(&ucounts->node);
	else
		ucounts = NULL;
	FUNC3(&ucounts_lock, flags);

	FUNC1(ucounts);
}