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
struct p9_fcall {int capacity; int /*<<< orphan*/  sdata; int /*<<< orphan*/ * cache; } ;
struct p9_client {int msize; int /*<<< orphan*/ * fcall_cache; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct p9_client *c, struct p9_fcall *fc,
			 int alloc_msize)
{
	if (FUNC2(c->fcall_cache) && alloc_msize == c->msize) {
		fc->sdata = FUNC1(c->fcall_cache, GFP_NOFS);
		fc->cache = c->fcall_cache;
	} else {
		fc->sdata = FUNC0(alloc_msize, GFP_NOFS);
		fc->cache = NULL;
	}
	if (!fc->sdata)
		return -ENOMEM;
	fc->capacity = alloc_msize;
	return 0;
}