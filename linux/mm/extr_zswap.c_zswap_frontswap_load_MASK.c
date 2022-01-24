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
struct zswap_tree {int /*<<< orphan*/  lock; int /*<<< orphan*/  rbroot; } ;
struct zswap_header {int dummy; } ;
struct zswap_entry {int /*<<< orphan*/  handle; TYPE_1__* pool; int /*<<< orphan*/  length; int /*<<< orphan*/  value; } ;
struct page {int dummy; } ;
struct crypto_comp {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
struct TYPE_2__ {int /*<<< orphan*/  zpool; int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  ZPOOL_MM_RO ; 
 int FUNC1 (struct crypto_comp*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int*) ; 
 struct crypto_comp** FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct zswap_entry* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct zswap_tree*,struct zswap_entry*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct zswap_tree** zswap_trees ; 

__attribute__((used)) static int FUNC14(unsigned type, pgoff_t offset,
				struct page *page)
{
	struct zswap_tree *tree = zswap_trees[type];
	struct zswap_entry *entry;
	struct crypto_comp *tfm;
	u8 *src, *dst;
	unsigned int dlen;
	int ret;

	/* find */
	FUNC6(&tree->lock);
	entry = FUNC11(&tree->rbroot, offset);
	if (!entry) {
		/* entry was written back */
		FUNC7(&tree->lock);
		return -1;
	}
	FUNC7(&tree->lock);

	if (!entry->length) {
		dst = FUNC3(page);
		FUNC13(dst, entry->value);
		FUNC4(dst);
		goto freeentry;
	}

	/* decompress */
	dlen = PAGE_SIZE;
	src = FUNC9(entry->pool->zpool, entry->handle, ZPOOL_MM_RO);
	if (FUNC8(entry->pool->zpool))
		src += sizeof(struct zswap_header);
	dst = FUNC3(page);
	tfm = *FUNC2(entry->pool->tfm);
	ret = FUNC1(tfm, src, entry->length, dst, &dlen);
	FUNC5(entry->pool->tfm);
	FUNC4(dst);
	FUNC10(entry->pool->zpool, entry->handle);
	FUNC0(ret);

freeentry:
	FUNC6(&tree->lock);
	FUNC12(tree, entry);
	FUNC7(&tree->lock);

	return 0;
}