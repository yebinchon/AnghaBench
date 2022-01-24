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
struct nilfs_palloc_req {TYPE_1__* pr_entry_bh; int /*<<< orphan*/  pr_entry_nr; } ;
struct nilfs_dat_entry {int /*<<< orphan*/  de_blocknr; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  b_page; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct nilfs_palloc_req*) ; 
 int FUNC5 (struct inode*,struct nilfs_palloc_req*,int /*<<< orphan*/ ) ; 
 struct nilfs_dat_entry* FUNC6 (struct inode*,int /*<<< orphan*/ ,TYPE_1__*,void*) ; 
 int FUNC7 (struct inode*,struct nilfs_palloc_req*) ; 

int FUNC8(struct inode *dat, struct nilfs_palloc_req *req)
{
	struct nilfs_dat_entry *entry;
	sector_t blocknr;
	void *kaddr;
	int ret;

	ret = FUNC5(dat, req, 0);
	if (ret < 0) {
		FUNC0(ret == -ENOENT);
		return ret;
	}

	kaddr = FUNC1(req->pr_entry_bh->b_page);
	entry = FUNC6(dat, req->pr_entry_nr,
					     req->pr_entry_bh, kaddr);
	blocknr = FUNC3(entry->de_blocknr);
	FUNC2(kaddr);

	if (blocknr == 0) {
		ret = FUNC7(dat, req);
		if (ret < 0) {
			FUNC4(dat, req);
			return ret;
		}
	}

	return 0;
}