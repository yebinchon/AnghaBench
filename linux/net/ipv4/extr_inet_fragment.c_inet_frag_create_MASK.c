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
struct inet_frags {int /*<<< orphan*/  rhash_params; } ;
struct inet_frag_queue {int /*<<< orphan*/  flags; int /*<<< orphan*/  node; int /*<<< orphan*/  key; int /*<<< orphan*/  timer; } ;
struct fqdir {int /*<<< orphan*/  rhashtable; scalar_t__ timeout; struct inet_frags* f; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct inet_frag_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INET_FRAG_COMPLETE ; 
 struct inet_frag_queue* FUNC1 (struct fqdir*,struct inet_frags*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct inet_frag_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct inet_frag_queue*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct inet_frag_queue* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inet_frag_queue *FUNC6(struct fqdir *fqdir,
						void *arg,
						struct inet_frag_queue **prev)
{
	struct inet_frags *f = fqdir->f;
	struct inet_frag_queue *q;

	q = FUNC1(fqdir, f, arg);
	if (!q) {
		*prev = FUNC0(-ENOMEM);
		return NULL;
	}
	FUNC4(&q->timer, jiffies + fqdir->timeout);

	*prev = FUNC5(&fqdir->rhashtable, &q->key,
						 &q->node, f->rhash_params);
	if (*prev) {
		q->flags |= INET_FRAG_COMPLETE;
		FUNC3(q);
		FUNC2(q);
		return NULL;
	}
	return q;
}