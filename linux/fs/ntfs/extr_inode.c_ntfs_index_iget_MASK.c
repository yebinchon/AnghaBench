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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  test_t ;
struct inode {int i_state; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
typedef  int /*<<< orphan*/  set_t ;
typedef  int /*<<< orphan*/  ntfschar ;
struct TYPE_3__ {int /*<<< orphan*/  mft_no; int /*<<< orphan*/  name_len; int /*<<< orphan*/ * name; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ ntfs_attr ;

/* Variables and functions */
 int /*<<< orphan*/  AT_INDEX_ALLOCATION ; 
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int I_NEW ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 scalar_t__ ntfs_init_locked_inode ; 
 int FUNC3 (struct inode*,struct inode*) ; 
 scalar_t__ ntfs_test_inode ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

struct inode *FUNC6(struct inode *base_vi, ntfschar *name,
		u32 name_len)
{
	struct inode *vi;
	int err;
	ntfs_attr na;

	na.mft_no = base_vi->i_ino;
	na.type = AT_INDEX_ALLOCATION;
	na.name = name;
	na.name_len = name_len;

	vi = FUNC1(base_vi->i_sb, na.mft_no, (test_t)ntfs_test_inode,
			(set_t)ntfs_init_locked_inode, &na);
	if (FUNC4(!vi))
		return FUNC0(-ENOMEM);

	err = 0;

	/* If this is a freshly allocated inode, need to read it now. */
	if (vi->i_state & I_NEW) {
		err = FUNC3(base_vi, vi);
		FUNC5(vi);
	}
	/*
	 * There is no point in keeping bad index inodes around.  This also
	 * simplifies things in that we never need to check for bad index
	 * inodes elsewhere.
	 */
	if (FUNC4(err)) {
		FUNC2(vi);
		vi = FUNC0(err);
	}
	return vi;
}