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
struct inode {int /*<<< orphan*/  i_ino; } ;
struct hfs_find_data {int /*<<< orphan*/  entrylength; int /*<<< orphan*/  entryoffset; int /*<<< orphan*/  bnode; TYPE_1__* tree; int /*<<< orphan*/  search_key; } ;
typedef  int /*<<< orphan*/  hfs_extent_rec ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  cached_extents; int /*<<< orphan*/  cached_start; } ;
struct TYPE_3__ {scalar_t__ depth; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  HFS_FK_DATA ; 
 int /*<<< orphan*/  HFS_FK_RSRC ; 
 int HFS_FLG_EXT_DIRTY ; 
 int HFS_FLG_EXT_NEW ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct hfs_find_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct hfs_find_data *fd)
{
	int res;

	FUNC6(fd->search_key, inode->i_ino, FUNC0(inode)->cached_start,
			  FUNC1(inode) ?  HFS_FK_RSRC : HFS_FK_DATA);
	res = FUNC4(fd);
	if (FUNC0(inode)->flags & HFS_FLG_EXT_NEW) {
		if (res != -ENOENT)
			return res;
		/* Fail early and avoid ENOSPC during the btree operation */
		res = FUNC2(fd->tree, fd->tree->depth + 1);
		if (res)
			return res;
		FUNC5(fd, FUNC0(inode)->cached_extents, sizeof(hfs_extent_rec));
		FUNC0(inode)->flags &= ~(HFS_FLG_EXT_DIRTY|HFS_FLG_EXT_NEW);
	} else {
		if (res)
			return res;
		FUNC3(fd->bnode, FUNC0(inode)->cached_extents, fd->entryoffset, fd->entrylength);
		FUNC0(inode)->flags &= ~HFS_FLG_EXT_DIRTY;
	}
	return 0;
}