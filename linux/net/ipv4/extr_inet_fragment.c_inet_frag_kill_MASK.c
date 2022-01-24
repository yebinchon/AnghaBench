#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inet_frag_queue {int flags; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  node; struct fqdir* fqdir; int /*<<< orphan*/  timer; } ;
struct fqdir {TYPE_1__* f; int /*<<< orphan*/  rhashtable; int /*<<< orphan*/  dead; } ;
struct TYPE_2__ {int /*<<< orphan*/  rhash_params; } ;

/* Variables and functions */
 int INET_FRAG_COMPLETE ; 
 int INET_FRAG_HASH_DEAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC5(struct inet_frag_queue *fq)
{
	if (FUNC0(&fq->timer))
		FUNC3(&fq->refcnt);

	if (!(fq->flags & INET_FRAG_COMPLETE)) {
		struct fqdir *fqdir = fq->fqdir;

		fq->flags |= INET_FRAG_COMPLETE;
		FUNC1();
		/* The RCU read lock provides a memory barrier
		 * guaranteeing that if fqdir->dead is false then
		 * the hash table destruction will not start until
		 * after we unlock.  Paired with inet_frags_exit_net().
		 */
		if (!fqdir->dead) {
			FUNC4(&fqdir->rhashtable, &fq->node,
					       fqdir->f->rhash_params);
			FUNC3(&fq->refcnt);
		} else {
			fq->flags |= INET_FRAG_HASH_DEAD;
		}
		FUNC2();
	}
}