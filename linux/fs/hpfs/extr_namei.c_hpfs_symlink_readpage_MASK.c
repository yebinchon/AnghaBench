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
struct page {TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct fnode {int dummy; } ;
struct file {int dummy; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct fnode* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct fnode*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static int FUNC9(struct file *file, struct page *page)
{
	char *link = FUNC7(page);
	struct inode *i = page->mapping->host;
	struct fnode *fnode;
	struct buffer_head *bh;
	int err;

	err = -EIO;
	FUNC3(i->i_sb);
	if (!(fnode = FUNC4(i->i_sb, i->i_ino, &bh)))
		goto fail;
	err = FUNC5(i->i_sb, fnode, "SYMLINK", link, PAGE_SIZE);
	FUNC2(bh);
	if (err)
		goto fail;
	FUNC6(i->i_sb);
	FUNC1(page);
	FUNC8(page);
	return 0;

fail:
	FUNC6(i->i_sb);
	FUNC0(page);
	FUNC8(page);
	return err;
}