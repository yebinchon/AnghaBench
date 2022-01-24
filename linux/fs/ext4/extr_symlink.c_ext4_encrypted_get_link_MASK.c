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
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_mapping; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
struct TYPE_4__ {void* i_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECHILD ; 
 char const* FUNC0 (struct page*) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 char* FUNC5 (struct inode*,void const*,unsigned int,struct delayed_call*) ; 
 void* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 struct page* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *FUNC9(struct dentry *dentry,
					   struct inode *inode,
					   struct delayed_call *done)
{
	struct page *cpage = NULL;
	const void *caddr;
	unsigned int max_size;
	const char *paddr;

	if (!dentry)
		return FUNC1(-ECHILD);

	if (FUNC4(inode)) {
		caddr = FUNC2(inode)->i_data;
		max_size = sizeof(FUNC2(inode)->i_data);
	} else {
		cpage = FUNC8(inode->i_mapping, 0, NULL);
		if (FUNC3(cpage))
			return FUNC0(cpage);
		caddr = FUNC6(cpage);
		max_size = inode->i_sb->s_blocksize;
	}

	paddr = FUNC5(inode, caddr, max_size, done);
	if (cpage)
		FUNC7(cpage);
	return paddr;
}