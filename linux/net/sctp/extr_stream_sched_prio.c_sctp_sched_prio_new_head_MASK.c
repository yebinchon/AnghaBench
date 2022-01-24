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
struct sctp_stream_priorities {int prio; int /*<<< orphan*/ * next; int /*<<< orphan*/  active; int /*<<< orphan*/  prio_sched; } ;
struct sctp_stream {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sctp_stream_priorities* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sctp_stream_priorities *FUNC2(
			struct sctp_stream *stream, int prio, gfp_t gfp)
{
	struct sctp_stream_priorities *p;

	p = FUNC1(sizeof(*p), gfp);
	if (!p)
		return NULL;

	FUNC0(&p->prio_sched);
	FUNC0(&p->active);
	p->next = NULL;
	p->prio = prio;

	return p;
}