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
struct page {int /*<<< orphan*/  index; } ;
struct inode {int dummy; } ;
struct dnode_of_data {int /*<<< orphan*/  inode_page; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FI_APPEND_WRITE ; 
 int /*<<< orphan*/  FI_DATA_EXIST ; 
 int /*<<< orphan*/  LOOKUP_NODE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  NODE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct dnode_of_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 void* FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

int FUNC16(struct inode *inode, struct page *page)
{
	void *src_addr, *dst_addr;
	struct dnode_of_data dn;
	int err;

	FUNC14(&dn, inode, NULL, NULL, 0);
	err = FUNC5(&dn, 0, LOOKUP_NODE);
	if (err)
		return err;

	if (!FUNC6(inode)) {
		FUNC7(&dn);
		return -EAGAIN;
	}

	FUNC3(FUNC0(inode), page->index);

	FUNC8(dn.inode_page, NODE, true, true);
	src_addr = FUNC10(page);
	dst_addr = FUNC9(inode, dn.inode_page);
	FUNC12(dst_addr, src_addr, FUNC1(inode));
	FUNC11(src_addr);
	FUNC15(dn.inode_page);

	FUNC4(page);

	FUNC13(inode, FI_APPEND_WRITE);
	FUNC13(inode, FI_DATA_EXIST);

	FUNC2(dn.inode_page);
	FUNC7(&dn);
	return 0;
}