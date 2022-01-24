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
struct inode {int /*<<< orphan*/  i_lock; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  cache_validity; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSIOS_EXTENDWRITE ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NFS_INO_INVALID_SIZE ; 
 int PAGE_SHIFT ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 
 int FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct page *page, unsigned int offset, unsigned int count)
{
	struct inode *inode = FUNC4(page)->host;
	loff_t end, i_size;
	pgoff_t end_index;

	FUNC7(&inode->i_lock);
	i_size = FUNC1(inode);
	end_index = (i_size - 1) >> PAGE_SHIFT;
	if (i_size > 0 && FUNC6(page) < end_index)
		goto out;
	end = FUNC5(page) + ((loff_t)offset+count);
	if (i_size >= end)
		goto out;
	FUNC2(inode, end);
	FUNC0(inode)->cache_validity &= ~NFS_INO_INVALID_SIZE;
	FUNC3(inode, NFSIOS_EXTENDWRITE);
out:
	FUNC8(&inode->i_lock);
}