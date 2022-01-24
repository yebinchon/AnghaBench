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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  swp_entry_t ;
struct zswap_tree {int /*<<< orphan*/  lock; int /*<<< orphan*/  rbroot; } ;
struct zswap_header {int /*<<< orphan*/  swpentry; } ;
struct zswap_entry {scalar_t__ offset; TYPE_1__* pool; int /*<<< orphan*/  length; } ;
struct zpool {int dummy; } ;
struct writeback_control {int /*<<< orphan*/  sync_mode; } ;
struct page {int dummy; } ;
struct crypto_comp {int dummy; } ;
typedef  scalar_t__ pgoff_t ;
struct TYPE_2__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EEXIST ; 
 int ENOMEM ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  WB_SYNC_NONE ; 
 int /*<<< orphan*/  ZPOOL_MM_RO ; 
#define  ZSWAP_SWAPCACHE_EXIST 130 
#define  ZSWAP_SWAPCACHE_FAIL 129 
#define  ZSWAP_SWAPCACHE_NEW 128 
 int /*<<< orphan*/  FUNC3 (struct page*,struct writeback_control*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct crypto_comp*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  end_swap_bio_write ; 
 struct crypto_comp** FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 size_t FUNC13 (int /*<<< orphan*/ ) ; 
 struct zswap_header* FUNC14 (struct zpool*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct zpool*,unsigned long) ; 
 struct zswap_entry* FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct zswap_tree*,struct zswap_entry*) ; 
 int FUNC18 (int /*<<< orphan*/ ,struct page**) ; 
 struct zswap_entry* FUNC19 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct zswap_tree** zswap_trees ; 
 int /*<<< orphan*/  zswap_written_back_pages ; 

__attribute__((used)) static int FUNC20(struct zpool *pool, unsigned long handle)
{
	struct zswap_header *zhdr;
	swp_entry_t swpentry;
	struct zswap_tree *tree;
	pgoff_t offset;
	struct zswap_entry *entry;
	struct page *page;
	struct crypto_comp *tfm;
	u8 *src, *dst;
	unsigned int dlen;
	int ret;
	struct writeback_control wbc = {
		.sync_mode = WB_SYNC_NONE,
	};

	/* extract swpentry from data */
	zhdr = FUNC14(pool, handle, ZPOOL_MM_RO);
	swpentry = zhdr->swpentry; /* here */
	tree = zswap_trees[FUNC13(swpentry)];
	offset = FUNC12(swpentry);

	/* find and ref zswap entry */
	FUNC10(&tree->lock);
	entry = FUNC16(&tree->rbroot, offset);
	if (!entry) {
		/* entry was invalidated */
		FUNC11(&tree->lock);
		FUNC15(pool, handle);
		return 0;
	}
	FUNC11(&tree->lock);
	FUNC0(offset != entry->offset);

	/* try to allocate swap cache page */
	switch (FUNC18(swpentry, &page)) {
	case ZSWAP_SWAPCACHE_FAIL: /* no memory or invalidate happened */
		ret = -ENOMEM;
		goto fail;

	case ZSWAP_SWAPCACHE_EXIST:
		/* page is already in the swap cache, ignore for now */
		FUNC9(page);
		ret = -EEXIST;
		goto fail;

	case ZSWAP_SWAPCACHE_NEW: /* page is locked */
		/* decompress */
		dlen = PAGE_SIZE;
		src = (u8 *)zhdr + sizeof(struct zswap_header);
		dst = FUNC6(page);
		tfm = *FUNC5(entry->pool->tfm);
		ret = FUNC4(tfm, src, entry->length,
					     dst, &dlen);
		FUNC8(entry->pool->tfm);
		FUNC7(dst);
		FUNC0(ret);
		FUNC0(dlen != PAGE_SIZE);

		/* page is up to date */
		FUNC2(page);
	}

	/* move it to the tail of the inactive list after end_writeback */
	FUNC1(page);

	/* start writeback */
	FUNC3(page, &wbc, end_swap_bio_write);
	FUNC9(page);
	zswap_written_back_pages++;

	FUNC10(&tree->lock);
	/* drop local reference */
	FUNC17(tree, entry);

	/*
	* There are two possible situations for entry here:
	* (1) refcount is 1(normal case),  entry is valid and on the tree
	* (2) refcount is 0, entry is freed and not on the tree
	*     because invalidate happened during writeback
	*  search the tree and free the entry if find entry
	*/
	if (entry == FUNC19(&tree->rbroot, offset))
		FUNC17(tree, entry);
	FUNC11(&tree->lock);

	goto end;

	/*
	* if we get here due to ZSWAP_SWAPCACHE_EXIST
	* a load may happening concurrently
	* it is safe and okay to not free the entry
	* if we free the entry in the following put
	* it it either okay to return !0
	*/
fail:
	FUNC10(&tree->lock);
	FUNC17(tree, entry);
	FUNC11(&tree->lock);

end:
	FUNC15(pool, handle);
	return ret;
}