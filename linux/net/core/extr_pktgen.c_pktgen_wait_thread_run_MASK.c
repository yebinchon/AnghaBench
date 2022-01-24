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
struct pktgen_thread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pktgen_thread_lock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pktgen_thread*) ; 

__attribute__((used)) static int FUNC5(struct pktgen_thread *t)
{
	while (FUNC4(t)) {

		/* note: 't' will still be around even after the unlock/lock
		 * cycle because pktgen_thread threads are only cleared at
		 * net exit
		 */
		FUNC2(&pktgen_thread_lock);
		FUNC0(100);
		FUNC1(&pktgen_thread_lock);

		if (FUNC3(current))
			goto signal;
	}
	return 1;
signal:
	return 0;
}