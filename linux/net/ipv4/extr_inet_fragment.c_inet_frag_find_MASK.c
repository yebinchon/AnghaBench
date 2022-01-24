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
struct inet_frag_queue {int /*<<< orphan*/  refcnt; } ;
struct fqdir {scalar_t__ high_thresh; TYPE_1__* f; int /*<<< orphan*/  rhashtable; } ;
struct TYPE_2__ {int /*<<< orphan*/  rhash_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inet_frag_queue*) ; 
 scalar_t__ FUNC1 (struct fqdir*) ; 
 struct inet_frag_queue* FUNC2 (struct fqdir*,void*,struct inet_frag_queue**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct inet_frag_queue* FUNC6 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

struct inet_frag_queue *FUNC7(struct fqdir *fqdir, void *key)
{
	struct inet_frag_queue *fq = NULL, *prev;

	if (!fqdir->high_thresh || FUNC1(fqdir) > fqdir->high_thresh)
		return NULL;

	FUNC3();

	prev = FUNC6(&fqdir->rhashtable, key, fqdir->f->rhash_params);
	if (!prev)
		fq = FUNC2(fqdir, key, &prev);
	if (!FUNC0(prev)) {
		fq = prev;
		if (!FUNC5(&fq->refcnt))
			fq = NULL;
	}
	FUNC4();
	return fq;
}