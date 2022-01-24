#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {scalar_t__ index; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct TYPE_3__ {int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ nfs_readdir_descriptor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int FUNC3 (TYPE_1__*,struct page*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static
int FUNC6(void *data, struct page* page)
{
	nfs_readdir_descriptor_t *desc = data;
	struct inode	*inode = FUNC1(desc->file);
	int ret;

	ret = FUNC3(desc, page, inode);
	if (ret < 0)
		goto error;
	FUNC0(page);

	if (FUNC2(inode->i_mapping, page->index + 1, -1) < 0) {
		/* Should never happen */
		FUNC4(inode, inode->i_mapping);
	}
	FUNC5(page);
	return 0;
 error:
	FUNC5(page);
	return ret;
}