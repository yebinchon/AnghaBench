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
struct ip_vs_seq {int previous_delta; int delta; int /*<<< orphan*/  init_seq; } ;
struct ip_vs_conn {unsigned int flags; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct ip_vs_conn *cp, struct ip_vs_seq *vseq,
				 unsigned int flag, __u32 seq, int diff)
{
	/* spinlock is to keep updating cp->flags atomic */
	FUNC1(&cp->lock);
	if (!(cp->flags & flag) || FUNC0(seq, vseq->init_seq)) {
		vseq->previous_delta = vseq->delta;
		vseq->delta += diff;
		vseq->init_seq = seq;
		cp->flags |= flag;
	}
	FUNC2(&cp->lock);
}