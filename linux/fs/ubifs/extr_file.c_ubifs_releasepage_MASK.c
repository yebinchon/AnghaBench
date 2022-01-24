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
struct ubifs_info {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {TYPE_2__* i_sb; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_4__ {struct ubifs_info* s_fs_info; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct page *page, gfp_t unused_gfp_flags)
{
	struct inode *inode = page->mapping->host;
	struct ubifs_info *c = inode->i_sb->s_fs_info;

	/*
	 * An attempt to release a dirty page without budgeting for it - should
	 * not happen.
	 */
	if (FUNC3(page))
		return 0;
	FUNC4(c, FUNC2(page));
	FUNC4(c, 0);
	FUNC1(page);
	FUNC0(page);
	return 1;
}