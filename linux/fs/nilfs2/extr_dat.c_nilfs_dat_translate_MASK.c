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
struct nilfs_dat_entry {int /*<<< orphan*/  de_blocknr; } ;
struct inode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  __u64 ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__ FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct buffer_head* FUNC8 (struct inode*,struct buffer_head*) ; 
 struct nilfs_dat_entry* FUNC9 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,void*) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 

int FUNC11(struct inode *dat, __u64 vblocknr, sector_t *blocknrp)
{
	struct buffer_head *entry_bh, *bh;
	struct nilfs_dat_entry *entry;
	sector_t blocknr;
	void *kaddr;
	int ret;

	ret = FUNC10(dat, vblocknr, 0, &entry_bh);
	if (ret < 0)
		return ret;

	if (!FUNC7() && FUNC2(entry_bh)) {
		bh = FUNC8(dat, entry_bh);
		if (bh) {
			FUNC0(!FUNC3(bh));
			FUNC1(entry_bh);
			entry_bh = bh;
		}
	}

	kaddr = FUNC4(entry_bh->b_page);
	entry = FUNC9(dat, vblocknr, entry_bh, kaddr);
	blocknr = FUNC6(entry->de_blocknr);
	if (blocknr == 0) {
		ret = -ENOENT;
		goto out;
	}
	*blocknrp = blocknr;

 out:
	FUNC5(kaddr);
	FUNC1(entry_bh);
	return ret;
}