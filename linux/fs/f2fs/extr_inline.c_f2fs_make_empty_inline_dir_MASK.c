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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_dentry_ptr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct inode*,struct f2fs_dentry_ptr*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 void* FUNC4 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct f2fs_dentry_ptr*,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

int FUNC7(struct inode *inode, struct inode *parent,
							struct page *ipage)
{
	struct f2fs_dentry_ptr d;
	void *inline_dentry;

	inline_dentry = FUNC4(inode, ipage);

	FUNC5(inode, &d, inline_dentry);
	FUNC1(inode, parent, &d);

	FUNC6(ipage);

	/* update i_size to MAX_INLINE_DATA */
	if (FUNC3(inode) < FUNC0(inode))
		FUNC2(inode, FUNC0(inode));
	return 0;
}