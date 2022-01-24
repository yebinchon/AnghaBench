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
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int dummy; } ;
typedef  int /*<<< orphan*/  nid_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_xattr_nid; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int FUNC3 (struct page*) ; 
 struct page* FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dnode_of_data*) ; 

int FUNC9(struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	nid_t nid = FUNC0(inode)->i_xattr_nid;
	struct dnode_of_data dn;
	struct page *npage;
	int err;

	if (!nid)
		return 0;

	npage = FUNC4(sbi, nid);
	if (FUNC2(npage))
		return FUNC3(npage);

	FUNC7(&dn, inode, NULL, npage, nid);
	err = FUNC8(&dn);
	if (err) {
		FUNC6(npage, 1);
		return err;
	}

	FUNC5(inode, 0);

	return 0;
}