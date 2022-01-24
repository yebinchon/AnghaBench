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
struct inet_frag_queue {int flags; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int INET_FRAG_COMPLETE ; 
 int INET_FRAG_HASH_DEAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct inet_frag_queue*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *ptr, void *arg)
{
	struct inet_frag_queue *fq = ptr;
	int count;

	count = FUNC0(&fq->timer) ? 1 : 0;

	FUNC3(&fq->lock);
	if (!(fq->flags & INET_FRAG_COMPLETE)) {
		fq->flags |= INET_FRAG_COMPLETE;
		count++;
	} else if (fq->flags & INET_FRAG_HASH_DEAD) {
		count++;
	}
	FUNC4(&fq->lock);

	if (FUNC2(count, &fq->refcnt))
		FUNC1(fq);
}