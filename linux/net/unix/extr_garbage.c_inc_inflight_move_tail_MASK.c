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
struct unix_sock {int /*<<< orphan*/  link; int /*<<< orphan*/  gc_flags; int /*<<< orphan*/  inflight; } ;

/* Variables and functions */
 int /*<<< orphan*/  UNIX_GC_MAYBE_CYCLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gc_candidates ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct unix_sock *u)
{
	FUNC0(&u->inflight);
	/* If this still might be part of a cycle, move it to the end
	 * of the list, so that it's checked even if it was already
	 * passed over
	 */
	if (FUNC2(UNIX_GC_MAYBE_CYCLE, &u->gc_flags))
		FUNC1(&u->link, &gc_candidates);
}