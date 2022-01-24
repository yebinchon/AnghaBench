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
struct TYPE_2__ {int /*<<< orphan*/ * i_data; } ;
struct udf_inode_info {scalar_t__ i_alloc_type; scalar_t__ i_lenExtents; TYPE_1__ i_ext; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_nlink; } ;

/* Variables and functions */
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct udf_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,unsigned long long) ; 

void FUNC12(struct inode *inode)
{
	struct udf_inode_info *iinfo = FUNC1(inode);
	int want_delete = 0;

	if (!inode->i_nlink && !FUNC4(inode)) {
		want_delete = 1;
		FUNC9(inode, 0);
		FUNC10(inode, FUNC0(inode));
	}
	FUNC6(&inode->i_data);
	FUNC3(inode);
	FUNC2(inode);
	if (iinfo->i_alloc_type != ICBTAG_FLAG_AD_IN_ICB &&
	    inode->i_size != iinfo->i_lenExtents) {
		FUNC11(inode->i_sb, "Inode %lu (mode %o) has inode size %llu different from extent length %llu. Filesystem need not be standards compliant.\n",
			 inode->i_ino, inode->i_mode,
			 (unsigned long long)inode->i_size,
			 (unsigned long long)iinfo->i_lenExtents);
	}
	FUNC5(iinfo->i_ext.i_data);
	iinfo->i_ext.i_data = NULL;
	FUNC7(inode);
	if (want_delete) {
		FUNC8(inode);
	}
}