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
struct inet_frags {unsigned int qsize; } ;
struct inet_frag_queue {int flags; int /*<<< orphan*/  rcu; int /*<<< orphan*/  rb_fragments; struct fqdir* fqdir; int /*<<< orphan*/  timer; } ;
struct fqdir {struct inet_frags* f; } ;

/* Variables and functions */
 int INET_FRAG_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  inet_frag_destroy_rcu ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fqdir*,unsigned int) ; 

void FUNC5(struct inet_frag_queue *q)
{
	struct fqdir *fqdir;
	unsigned int sum, sum_truesize = 0;
	struct inet_frags *f;

	FUNC0(!(q->flags & INET_FRAG_COMPLETE));
	FUNC0(FUNC2(&q->timer) != 0);

	/* Release all fragment data. */
	fqdir = q->fqdir;
	f = fqdir->f;
	sum_truesize = FUNC3(&q->rb_fragments);
	sum = sum_truesize + f->qsize;

	FUNC1(&q->rcu, inet_frag_destroy_rcu);

	FUNC4(fqdir, sum);
}