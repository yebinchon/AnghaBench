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
struct inet_frags {int /*<<< orphan*/  frag_expire; int /*<<< orphan*/  qsize; int /*<<< orphan*/  (* constructor ) (struct inet_frag_queue*,void*) ;int /*<<< orphan*/  frags_cachep; } ;
struct inet_frag_queue {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; struct fqdir* fqdir; } ;
struct fqdir {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct fqdir*,int /*<<< orphan*/ ) ; 
 struct inet_frag_queue* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inet_frag_queue*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inet_frag_queue *FUNC6(struct fqdir *fqdir,
					       struct inet_frags *f,
					       void *arg)
{
	struct inet_frag_queue *q;

	q = FUNC1(f->frags_cachep, GFP_ATOMIC);
	if (!q)
		return NULL;

	q->fqdir = fqdir;
	f->constructor(q, arg);
	FUNC0(fqdir, f->qsize);

	FUNC5(&q->timer, f->frag_expire, 0);
	FUNC3(&q->lock);
	FUNC2(&q->refcnt, 3);

	return q;
}