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
struct xlog {scalar_t__ l_logsize; } ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  atomic64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int*,int*) ; 

__attribute__((used)) static void
FUNC4(
	struct xlog		*log,
	atomic64_t		*head,
	int			bytes)
{
	int64_t	head_val = FUNC1(head);
	int64_t new, old;

	do {
		int	cycle, space;

		FUNC3(head_val, &cycle, &space);

		space -= bytes;
		if (space < 0) {
			space += log->l_logsize;
			cycle--;
		}

		old = head_val;
		new = FUNC2(cycle, space);
		head_val = FUNC0(head, old, new);
	} while (head_val != old);
}