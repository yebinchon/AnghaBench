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
typedef  scalar_t__ u64 ;
struct super_block {int dummy; } ;
struct squashfs_cache_entry {scalar_t__ block; scalar_t__ refcount; int pending; scalar_t__ error; scalar_t__ length; int /*<<< orphan*/  wait_queue; scalar_t__ num_waiters; int /*<<< orphan*/  actor; int /*<<< orphan*/  next_index; } ;
struct squashfs_cache {int curr_blk; int entries; scalar_t__ unused; int next_blk; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; struct squashfs_cache_entry* entry; int /*<<< orphan*/  num_waiters; int /*<<< orphan*/  wait_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct super_block*,scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct squashfs_cache_entry *FUNC7(struct super_block *sb,
	struct squashfs_cache *cache, u64 block, int length)
{
	int i, n;
	struct squashfs_cache_entry *entry;

	FUNC2(&cache->lock);

	while (1) {
		for (i = cache->curr_blk, n = 0; n < cache->entries; n++) {
			if (cache->entry[i].block == block) {
				cache->curr_blk = i;
				break;
			}
			i = (i + 1) % cache->entries;
		}

		if (n == cache->entries) {
			/*
			 * Block not in cache, if all cache entries are used
			 * go to sleep waiting for one to become available.
			 */
			if (cache->unused == 0) {
				cache->num_waiters++;
				FUNC3(&cache->lock);
				FUNC5(cache->wait_queue, cache->unused);
				FUNC2(&cache->lock);
				cache->num_waiters--;
				continue;
			}

			/*
			 * At least one unused cache entry.  A simple
			 * round-robin strategy is used to choose the entry to
			 * be evicted from the cache.
			 */
			i = cache->next_blk;
			for (n = 0; n < cache->entries; n++) {
				if (cache->entry[i].refcount == 0)
					break;
				i = (i + 1) % cache->entries;
			}

			cache->next_blk = (i + 1) % cache->entries;
			entry = &cache->entry[i];

			/*
			 * Initialise chosen cache entry, and fill it in from
			 * disk.
			 */
			cache->unused--;
			entry->block = block;
			entry->refcount = 1;
			entry->pending = 1;
			entry->num_waiters = 0;
			entry->error = 0;
			FUNC3(&cache->lock);

			entry->length = FUNC4(sb, block, length,
				&entry->next_index, entry->actor);

			FUNC2(&cache->lock);

			if (entry->length < 0)
				entry->error = entry->length;

			entry->pending = 0;

			/*
			 * While filling this entry one or more other processes
			 * have looked it up in the cache, and have slept
			 * waiting for it to become available.
			 */
			if (entry->num_waiters) {
				FUNC3(&cache->lock);
				FUNC6(&entry->wait_queue);
			} else
				FUNC3(&cache->lock);

			goto out;
		}

		/*
		 * Block already in cache.  Increment refcount so it doesn't
		 * get reused until we're finished with it, if it was
		 * previously unused there's one less cache entry available
		 * for reuse.
		 */
		entry = &cache->entry[i];
		if (entry->refcount == 0)
			cache->unused--;
		entry->refcount++;

		/*
		 * If the entry is currently being filled in by another process
		 * go to sleep waiting for it to become available.
		 */
		if (entry->pending) {
			entry->num_waiters++;
			FUNC3(&cache->lock);
			FUNC5(entry->wait_queue, !entry->pending);
		} else
			FUNC3(&cache->lock);

		goto out;
	}

out:
	FUNC1("Got %s %d, start block %lld, refcount %d, error %d\n",
		cache->name, i, entry->block, entry->refcount, entry->error);

	if (entry->error)
		FUNC0("Unable to read %s cache entry [%llx]\n", cache->name,
							block);
	return entry;
}