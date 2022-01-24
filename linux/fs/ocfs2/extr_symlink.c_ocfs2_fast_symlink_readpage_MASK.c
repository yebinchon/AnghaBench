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
struct page {TYPE_2__* mapping; } ;
struct TYPE_3__ {scalar_t__ i_symlink; } ;
struct ocfs2_dinode {TYPE_1__ id2; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 void* FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,struct buffer_head**) ; 
 size_t FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

__attribute__((used)) static int FUNC10(struct file *unused, struct page *page)
{
	struct inode *inode = page->mapping->host;
	struct buffer_head *bh = NULL;
	int status = FUNC7(inode, &bh);
	struct ocfs2_dinode *fe;
	const char *link;
	void *kaddr;
	size_t len;

	if (status < 0) {
		FUNC5(status);
		return status;
	}

	fe = (struct ocfs2_dinode *) bh->b_data;
	link = (char *) fe->id2.i_symlink;
	/* will be less than a page size */
	len = FUNC8(link, FUNC6(inode->i_sb));
	kaddr = FUNC2(page);
	FUNC4(kaddr, link, len + 1);
	FUNC3(kaddr);
	FUNC0(page);
	FUNC9(page);
	FUNC1(bh);
	return 0;
}