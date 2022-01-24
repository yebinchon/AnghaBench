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
struct nfsd_net {unsigned int drc_hashsize; struct nfsd_drc_bucket* drc_hashtbl; } ;
struct nfsd_drc_bucket {int /*<<< orphan*/  cache_lock; int /*<<< orphan*/  lru_head; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct nfsd_drc_bucket*,struct nfsd_net*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long
FUNC4(struct nfsd_net *nn)
{
	unsigned int i;
	long freed = 0;

	for (i = 0; i < nn->drc_hashsize; i++) {
		struct nfsd_drc_bucket *b = &nn->drc_hashtbl[i];

		if (FUNC0(&b->lru_head))
			continue;
		FUNC2(&b->cache_lock);
		freed += FUNC1(b, nn);
		FUNC3(&b->cache_lock);
	}
	return freed;
}