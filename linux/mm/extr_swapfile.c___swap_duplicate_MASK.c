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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct swap_info_struct {unsigned char* swap_map; } ;
struct swap_cluster_info {int dummy; } ;

/* Variables and functions */
 unsigned char COUNT_CONTINUED ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 unsigned char SWAP_HAS_CACHE ; 
 scalar_t__ SWAP_MAP_BAD ; 
 unsigned char SWAP_MAP_MAX ; 
 struct swap_info_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 struct swap_cluster_info* FUNC1 (struct swap_info_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct swap_info_struct*) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (struct swap_info_struct*,unsigned long,unsigned char) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct swap_info_struct*,struct swap_cluster_info*) ; 

__attribute__((used)) static int FUNC8(swp_entry_t entry, unsigned char usage)
{
	struct swap_info_struct *p;
	struct swap_cluster_info *ci;
	unsigned long offset;
	unsigned char count;
	unsigned char has_cache;
	int err = -EINVAL;

	p = FUNC0(entry);
	if (!p)
		goto out;

	offset = FUNC5(entry);
	ci = FUNC1(p, offset);

	count = p->swap_map[offset];

	/*
	 * swapin_readahead() doesn't check if a swap entry is valid, so the
	 * swap entry could be SWAP_MAP_BAD. Check here with lock held.
	 */
	if (FUNC6(FUNC3(count) == SWAP_MAP_BAD)) {
		err = -ENOENT;
		goto unlock_out;
	}

	has_cache = count & SWAP_HAS_CACHE;
	count &= ~SWAP_HAS_CACHE;
	err = 0;

	if (usage == SWAP_HAS_CACHE) {

		/* set SWAP_HAS_CACHE if there is no cache and entry is used */
		if (!has_cache && count)
			has_cache = SWAP_HAS_CACHE;
		else if (has_cache)		/* someone else added cache */
			err = -EEXIST;
		else				/* no users remaining */
			err = -ENOENT;

	} else if (count || has_cache) {

		if ((count & ~COUNT_CONTINUED) < SWAP_MAP_MAX)
			count += usage;
		else if ((count & ~COUNT_CONTINUED) > SWAP_MAP_MAX)
			err = -EINVAL;
		else if (FUNC4(p, offset, count))
			count = COUNT_CONTINUED;
		else
			err = -ENOMEM;
	} else
		err = -ENOENT;			/* unused swap entry */

	p->swap_map[offset] = count | has_cache;

unlock_out:
	FUNC7(p, ci);
out:
	if (p)
		FUNC2(p);
	return err;
}