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
struct squashfs_cache_entry {int /*<<< orphan*/ * actor; int /*<<< orphan*/ ** data; int /*<<< orphan*/  block; struct squashfs_cache* cache; int /*<<< orphan*/  wait_queue; } ;
struct squashfs_cache {int unused; int entries; int block_size; int pages; char* name; struct squashfs_cache_entry* entry; int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  lock; scalar_t__ num_waiters; scalar_t__ next_blk; scalar_t__ curr_blk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SQUASHFS_INVALID_BLK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct squashfs_cache* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct squashfs_cache*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 

struct squashfs_cache *FUNC8(char *name, int entries,
	int block_size)
{
	int i, j;
	struct squashfs_cache *cache = FUNC4(sizeof(*cache), GFP_KERNEL);

	if (cache == NULL) {
		FUNC0("Failed to allocate %s cache\n", name);
		return NULL;
	}

	cache->entry = FUNC2(entries, sizeof(*(cache->entry)), GFP_KERNEL);
	if (cache->entry == NULL) {
		FUNC0("Failed to allocate %s cache\n", name);
		goto cleanup;
	}

	cache->curr_blk = 0;
	cache->next_blk = 0;
	cache->unused = entries;
	cache->entries = entries;
	cache->block_size = block_size;
	cache->pages = block_size >> PAGE_SHIFT;
	cache->pages = cache->pages ? cache->pages : 1;
	cache->name = name;
	cache->num_waiters = 0;
	FUNC5(&cache->lock);
	FUNC1(&cache->wait_queue);

	for (i = 0; i < entries; i++) {
		struct squashfs_cache_entry *entry = &cache->entry[i];

		FUNC1(&cache->entry[i].wait_queue);
		entry->cache = cache;
		entry->block = SQUASHFS_INVALID_BLK;
		entry->data = FUNC2(cache->pages, sizeof(void *), GFP_KERNEL);
		if (entry->data == NULL) {
			FUNC0("Failed to allocate %s cache entry\n", name);
			goto cleanup;
		}

		for (j = 0; j < cache->pages; j++) {
			entry->data[j] = FUNC3(PAGE_SIZE, GFP_KERNEL);
			if (entry->data[j] == NULL) {
				FUNC0("Failed to allocate %s buffer\n", name);
				goto cleanup;
			}
		}

		entry->actor = FUNC7(entry->data,
						cache->pages, 0);
		if (entry->actor == NULL) {
			FUNC0("Failed to allocate %s cache entry\n", name);
			goto cleanup;
		}
	}

	return cache;

cleanup:
	FUNC6(cache);
	return NULL;
}