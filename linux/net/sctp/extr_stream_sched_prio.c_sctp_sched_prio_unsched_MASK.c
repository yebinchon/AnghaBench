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
struct sctp_stream_priorities {struct sctp_stream_out_ext* next; int /*<<< orphan*/  prio_sched; int /*<<< orphan*/  active; } ;
struct sctp_stream_out_ext {int /*<<< orphan*/  prio_list; struct sctp_stream_priorities* prio_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_stream_priorities*) ; 

__attribute__((used)) static bool FUNC3(struct sctp_stream_out_ext *soute)
{
	bool scheduled = false;

	if (!FUNC1(&soute->prio_list)) {
		struct sctp_stream_priorities *prio_head = soute->prio_head;

		/* Scheduled */
		scheduled = true;

		if (prio_head->next == soute)
			/* Try to move to the next stream */
			FUNC2(prio_head);

		FUNC0(&soute->prio_list);

		/* Also unsched the priority if this was the last stream */
		if (FUNC1(&prio_head->active)) {
			FUNC0(&prio_head->prio_sched);
			/* If there is no stream left, clear next */
			prio_head->next = NULL;
		}
	}

	return scheduled;
}