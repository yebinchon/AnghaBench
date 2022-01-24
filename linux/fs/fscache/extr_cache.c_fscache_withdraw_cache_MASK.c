#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fscache_cache {TYPE_2__* tag; int /*<<< orphan*/  kobj; int /*<<< orphan*/  object_list; int /*<<< orphan*/  object_count; TYPE_1__* ops; int /*<<< orphan*/  link; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/ * cache; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* dissociate_pages ) (struct fscache_cache*) ;int /*<<< orphan*/  (* sync_cache ) (struct fscache_cache*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FSCACHE_CACHE_WITHDRAWN ; 
 int /*<<< orphan*/  FSCACHE_TAG_RESERVED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dying_objects ; 
 int /*<<< orphan*/  fscache_addremove_sem ; 
 int /*<<< orphan*/  fscache_cache_cleared_wq ; 
 int /*<<< orphan*/  fscache_n_cop_dissociate_pages ; 
 int /*<<< orphan*/  fscache_n_cop_sync_cache ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct fscache_cache*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct fscache_cache*) ; 
 int /*<<< orphan*/  FUNC18 (struct fscache_cache*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 

void FUNC22(struct fscache_cache *cache)
{
	FUNC2(dying_objects);

	FUNC4("");

	FUNC16("Withdrawing cache \"%s\"\n",
		  cache->tag->name);

	/* make the cache unavailable for cookie acquisition */
	if (FUNC19(FSCACHE_CACHE_WITHDRAWN, &cache->flags))
		FUNC1();

	FUNC8(&fscache_addremove_sem);
	FUNC14(&cache->link);
	cache->tag->cache = NULL;
	FUNC20(&fscache_addremove_sem);

	/* make sure all pages pinned by operations on behalf of the netfs are
	 * written to disk */
	FUNC10(&fscache_n_cop_sync_cache);
	cache->ops->sync_cache(cache);
	FUNC11(&fscache_n_cop_sync_cache);

	/* dissociate all the netfs pages backed by this cache from the block
	 * mappings in the cache */
	FUNC10(&fscache_n_cop_dissociate_pages);
	cache->ops->dissociate_pages(cache);
	FUNC11(&fscache_n_cop_dissociate_pages);

	/* we now have to destroy all the active objects pertaining to this
	 * cache - which we do by passing them off to thread pool to be
	 * disposed of */
	FUNC3("destroy");

	FUNC12(cache, &dying_objects);

	/* wait for all extant objects to finish their outstanding operations
	 * and go away */
	FUNC3("wait for finish");
	FUNC21(fscache_cache_cleared_wq,
		   FUNC6(&cache->object_count) == 0);
	FUNC3("wait for clearance");
	FUNC21(fscache_cache_cleared_wq,
		   FUNC15(&cache->object_list));
	FUNC3("cleared");
	FUNC0(FUNC15(&dying_objects));

	FUNC13(cache->kobj);

	FUNC7(FSCACHE_TAG_RESERVED, &cache->tag->flags);
	FUNC9(cache->tag);
	cache->tag = NULL;

	FUNC5("");
}