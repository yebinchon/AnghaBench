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
struct nilfs_dat_entry {int /*<<< orphan*/  de_blocknr; int /*<<< orphan*/  de_start; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ sector_t ;
typedef  scalar_t__ __u64 ;
struct TYPE_2__ {int /*<<< orphan*/  b_page; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct nilfs_palloc_req*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct nilfs_palloc_req*) ; 
 struct nilfs_dat_entry* FUNC6 (struct inode*,int /*<<< orphan*/ ,TYPE_1__*,void*) ; 

void FUNC7(struct inode *dat, struct nilfs_palloc_req *req)
{
	struct nilfs_dat_entry *entry;
	__u64 start;
	sector_t blocknr;
	void *kaddr;

	kaddr = FUNC0(req->pr_entry_bh->b_page);
	entry = FUNC6(dat, req->pr_entry_nr,
					     req->pr_entry_bh, kaddr);
	start = FUNC2(entry->de_start);
	blocknr = FUNC2(entry->de_blocknr);
	FUNC1(kaddr);

	if (start == FUNC4(dat) && blocknr == 0)
		FUNC5(dat, req);
	FUNC3(dat, req);
}