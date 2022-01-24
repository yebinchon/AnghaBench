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
struct sctp_inq {int /*<<< orphan*/  immediate; int /*<<< orphan*/ * in_progress; int /*<<< orphan*/  in_chunk_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct sctp_inq *queue)
{
	FUNC0(&queue->in_chunk_list);
	queue->in_progress = NULL;

	/* Create a task for delivering data.  */
	FUNC1(&queue->immediate, NULL);
}