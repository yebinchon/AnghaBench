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
struct batadv_forw_packet {int /*<<< orphan*/  cleanup_list; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct batadv_forw_packet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

bool FUNC5(struct batadv_forw_packet *forw_packet,
			      spinlock_t *lock)
{
	/* did purging routine steal it earlier? */
	FUNC3(lock);
	if (FUNC0(forw_packet)) {
		FUNC4(lock);
		return false;
	}

	FUNC2(&forw_packet->list);

	/* Just to spot misuse of this function */
	FUNC1(&forw_packet->cleanup_list);

	FUNC4(lock);
	return true;
}