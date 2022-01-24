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
struct TYPE_2__ {scalar_t__ i_data; } ;
struct udf_inode_info {scalar_t__ i_alloc_type; unsigned int i_lenAlloc; int /*<<< orphan*/  i_data_sem; scalar_t__ i_lenEAttr; TYPE_1__ i_ext; } ;
struct inode {unsigned int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_mode; } ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct udf_inode_info* FUNC6 (struct inode*) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int FUNC15 (struct inode*) ; 
 int FUNC16 (struct inode*,unsigned int) ; 
 unsigned int FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  udf_get_block ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

int FUNC21(struct inode *inode, loff_t newsize)
{
	int err;
	struct udf_inode_info *iinfo;
	unsigned int bsize = FUNC10(inode);

	if (!(FUNC5(inode->i_mode) || FUNC3(inode->i_mode) ||
	      FUNC4(inode->i_mode)))
		return -EINVAL;
	if (FUNC0(inode) || FUNC1(inode))
		return -EPERM;

	iinfo = FUNC6(inode);
	if (newsize > inode->i_size) {
		FUNC9(&iinfo->i_data_sem);
		if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) {
			if (bsize <
			    (FUNC17(inode) + newsize)) {
				err = FUNC15(inode);
				if (err)
					return err;
				FUNC9(&iinfo->i_data_sem);
			} else {
				iinfo->i_lenAlloc = newsize;
				goto set_size;
			}
		}
		err = FUNC16(inode, newsize);
		if (err) {
			FUNC20(&iinfo->i_data_sem);
			return err;
		}
set_size:
		FUNC20(&iinfo->i_data_sem);
		FUNC13(inode, newsize);
	} else {
		if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) {
			FUNC9(&iinfo->i_data_sem);
			FUNC14(inode);
			FUNC12(iinfo->i_ext.i_data + iinfo->i_lenEAttr + newsize,
			       0x00, bsize - newsize -
			       FUNC17(inode));
			iinfo->i_lenAlloc = newsize;
			FUNC13(inode, newsize);
			FUNC20(&iinfo->i_data_sem);
			goto update_time;
		}
		err = FUNC7(inode->i_mapping, newsize,
					  udf_get_block);
		if (err)
			return err;
		FUNC13(inode, newsize);
		FUNC9(&iinfo->i_data_sem);
		FUNC14(inode);
		err = FUNC19(inode);
		FUNC20(&iinfo->i_data_sem);
		if (err)
			return err;
	}
update_time:
	inode->i_mtime = inode->i_ctime = FUNC8(inode);
	if (FUNC2(inode))
		FUNC18(inode);
	else
		FUNC11(inode);
	return 0;
}