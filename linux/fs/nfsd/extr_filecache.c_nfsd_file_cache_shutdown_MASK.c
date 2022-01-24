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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFSD_FILE_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dispose ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nfsd_file_fsnotify_group ; 
 int /*<<< orphan*/ * nfsd_file_hashtbl ; 
 int /*<<< orphan*/  nfsd_file_lease_notifier ; 
 int /*<<< orphan*/  nfsd_file_lru ; 
 int /*<<< orphan*/  nfsd_file_lru_flags ; 
 int /*<<< orphan*/ * nfsd_file_mark_slab ; 
 int /*<<< orphan*/  nfsd_file_shrinker ; 
 int /*<<< orphan*/ * nfsd_file_slab ; 
 int /*<<< orphan*/  nfsd_filecache_laundrette ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void
FUNC12(void)
{
	FUNC0(dispose);

	FUNC10(NFSD_FILE_SHUTDOWN, &nfsd_file_lru_flags);

	FUNC6(&nfsd_file_lease_notifier);
	FUNC11(&nfsd_file_shrinker);
	/*
	 * make sure all callers of nfsd_file_lru_cb are done before
	 * calling nfsd_file_cache_purge
	 */
	FUNC1(&nfsd_filecache_laundrette);
	FUNC8(NULL);
	FUNC7(&nfsd_file_lru);
	FUNC9();
	FUNC2(nfsd_file_fsnotify_group);
	nfsd_file_fsnotify_group = NULL;
	FUNC5(nfsd_file_slab);
	nfsd_file_slab = NULL;
	FUNC3();
	FUNC5(nfsd_file_mark_slab);
	nfsd_file_mark_slab = NULL;
	FUNC4(nfsd_file_hashtbl);
	nfsd_file_hashtbl = NULL;
}