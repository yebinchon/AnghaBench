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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int dummy; } ;
struct fuse_conn {scalar_t__ writeback_cache; } ;
struct fuse_args_pages {int num_pages; int /*<<< orphan*/ * pages; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 size_t PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct fuse_conn* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static void FUNC4(struct inode *inode, u64 attr_ver, size_t num_read,
			    struct fuse_args_pages *ap)
{
	struct fuse_conn *fc = FUNC1(inode);

	if (fc->writeback_cache) {
		/*
		 * A hole in a file. Some data after the hole are in page cache,
		 * but have not reached the client fs yet. So, the hole is not
		 * present there.
		 */
		int i;
		int start_idx = num_read >> PAGE_SHIFT;
		size_t off = num_read & (PAGE_SIZE - 1);

		for (i = start_idx; i < ap->num_pages; i++) {
			FUNC3(ap->pages[i], off, PAGE_SIZE);
			off = 0;
		}
	} else {
		loff_t pos = FUNC2(ap->pages[0]) + num_read;
		FUNC0(inode, pos, attr_ver);
	}
}