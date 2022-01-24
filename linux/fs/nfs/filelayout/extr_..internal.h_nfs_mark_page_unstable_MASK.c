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
struct page {int dummy; } ;
struct nfs_commit_info {int /*<<< orphan*/  dreq; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  wb; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_DIRTY_DATASYNC ; 
 int /*<<< orphan*/  NR_UNSTABLE_NFS ; 
 int /*<<< orphan*/  WB_RECLAIMABLE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct inode*) ; 
 TYPE_1__* FUNC4 (struct page*) ; 

__attribute__((used)) static inline
void FUNC5(struct page *page, struct nfs_commit_info *cinfo)
{
	if (!cinfo->dreq) {
		struct inode *inode = FUNC4(page)->host;

		FUNC1(page, NR_UNSTABLE_NFS);
		FUNC2(&FUNC3(inode)->wb, WB_RECLAIMABLE);
		FUNC0(inode, I_DIRTY_DATASYNC);
	}
}