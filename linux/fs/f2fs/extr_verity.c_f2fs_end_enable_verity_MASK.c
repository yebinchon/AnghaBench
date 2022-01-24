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
typedef  scalar_t__ u64 ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct fsverity_descriptor_location {int /*<<< orphan*/  pos; int /*<<< orphan*/  size; int /*<<< orphan*/  version; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  dloc ;

/* Variables and functions */
 int /*<<< orphan*/  F2FS_XATTR_INDEX_VERITY ; 
 int /*<<< orphan*/  F2FS_XATTR_NAME_VERITY ; 
 int /*<<< orphan*/  FI_VERITY_IN_PROGRESS ; 
 int /*<<< orphan*/  XATTR_CREATE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fsverity_descriptor_location*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 struct inode* FUNC8 (struct file*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,void const*,size_t,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct file *filp, const void *desc,
				  size_t desc_size, u64 merkle_tree_size)
{
	struct inode *inode = FUNC8(filp);
	u64 desc_pos = FUNC7(inode) + merkle_tree_size;
	struct fsverity_descriptor_location dloc = {
		.version = FUNC1(1),
		.size = FUNC1(desc_size),
		.pos = FUNC2(desc_pos),
	};
	int err = 0;

	if (desc != NULL) {
		/* Succeeded; write the verity descriptor. */
		err = FUNC11(inode, desc, desc_size, desc_pos);

		/* Write all pages before clearing FI_VERITY_IN_PROGRESS. */
		if (!err)
			err = FUNC10(inode->i_mapping);
	}

	/* If we failed, truncate anything we wrote past i_size. */
	if (desc == NULL || err)
		FUNC6(inode);

	FUNC0(inode, FI_VERITY_IN_PROGRESS);

	if (desc != NULL && !err) {
		err = FUNC5(inode, F2FS_XATTR_INDEX_VERITY,
				    F2FS_XATTR_NAME_VERITY, &dloc, sizeof(dloc),
				    NULL, XATTR_CREATE);
		if (!err) {
			FUNC9(inode);
			FUNC4(inode);
			FUNC3(inode, true);
		}
	}
	return err;
}