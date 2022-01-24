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
struct TYPE_4__ {struct ubifs_info* s_fs_info; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,int) ; 

__attribute__((used)) static int FUNC2(struct page *page)
{
	int ret;
	struct inode *inode = page->mapping->host;
	struct ubifs_info *c = inode->i_sb->s_fs_info;

	ret = FUNC0(page);
	/*
	 * An attempt to dirty a page without budgeting for it - should not
	 * happen.
	 */
	FUNC1(c, ret == 0);
	return ret;
}