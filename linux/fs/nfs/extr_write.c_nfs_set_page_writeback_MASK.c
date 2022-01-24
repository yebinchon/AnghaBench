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
struct page {int dummy; } ;
struct nfs_server {int /*<<< orphan*/  writeback; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 scalar_t__ NFS_CONGESTION_ON_THRESH ; 
 struct nfs_server* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 TYPE_1__* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct page*) ; 

__attribute__((used)) static void FUNC7(struct page *page)
{
	struct inode *inode = FUNC4(page)->host;
	struct nfs_server *nfss = FUNC0(inode);
	int ret = FUNC6(page);

	FUNC1(ret != 0);

	if (FUNC2(&nfss->writeback) >
			NFS_CONGESTION_ON_THRESH)
		FUNC5(FUNC3(inode), BLK_RW_ASYNC);
}