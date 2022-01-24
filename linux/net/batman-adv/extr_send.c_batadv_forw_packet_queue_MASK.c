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
struct hlist_head {int dummy; } ;
struct batadv_forw_packet {int /*<<< orphan*/  delayed_work; int /*<<< orphan*/  list; int /*<<< orphan*/  cleanup_list; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  batadv_event_workqueue ; 
 scalar_t__ FUNC1 (struct batadv_forw_packet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct batadv_forw_packet *forw_packet,
				     spinlock_t *lock, struct hlist_head *head,
				     unsigned long send_time)
{
	FUNC6(lock);

	/* did purging routine steal it from us? */
	if (FUNC1(forw_packet)) {
		/* If you got it for free() without trouble, then
		 * don't get back into the queue after stealing...
		 */
		FUNC0(FUNC4(&forw_packet->cleanup_list),
			  "Requeuing after batadv_forw_packet_steal() not allowed!\n");

		FUNC7(lock);
		return;
	}

	FUNC3(&forw_packet->list);
	FUNC2(&forw_packet->list, head);

	FUNC5(batadv_event_workqueue,
			   &forw_packet->delayed_work,
			   send_time - jiffies);
	FUNC7(lock);
}