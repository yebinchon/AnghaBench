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
struct ubifs_info {int /*<<< orphan*/  dirty_pg_cnt; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {TYPE_2__* i_sb; } ;
struct TYPE_4__ {struct ubifs_info* s_fs_info; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct page *page, unsigned int offset,
				 unsigned int length)
{
	struct inode *inode = page->mapping->host;
	struct ubifs_info *c = inode->i_sb->s_fs_info;

	FUNC7(c, FUNC3(page));
	if (offset || length < PAGE_SIZE)
		/* Partial page remains dirty */
		return;

	if (FUNC2(page))
		FUNC6(c);
	else
		FUNC5(c);

	FUNC4(&c->dirty_pg_cnt);
	FUNC1(page);
	FUNC0(page);
}