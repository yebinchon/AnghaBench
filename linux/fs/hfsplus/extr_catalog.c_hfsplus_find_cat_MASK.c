#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct super_block {int dummy; } ;
struct hfs_find_data {int /*<<< orphan*/  search_key; } ;
struct TYPE_7__ {int /*<<< orphan*/  length; } ;
struct TYPE_5__ {TYPE_3__ nodeName; int /*<<< orphan*/  parentID; } ;
struct TYPE_6__ {TYPE_1__ thread; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ hfsplus_cat_entry ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ HFSPLUS_FILE_THREAD ; 
 scalar_t__ HFSPLUS_FOLDER_THREAD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hfs_find_data*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hfs_find_data*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  hfs_find_rec_by_key ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(struct super_block *sb, u32 cnid,
		     struct hfs_find_data *fd)
{
	hfsplus_cat_entry tmp;
	int err;
	u16 type;

	FUNC5(sb, fd->search_key, cnid);
	err = FUNC3(fd, &tmp, sizeof(hfsplus_cat_entry));
	if (err)
		return err;

	type = FUNC0(tmp.type);
	if (type != HFSPLUS_FOLDER_THREAD && type != HFSPLUS_FILE_THREAD) {
		FUNC6("found bad thread record in catalog\n");
		return -EIO;
	}

	if (FUNC0(tmp.thread.nodeName.length) > 255) {
		FUNC6("catalog name length corrupted\n");
		return -EIO;
	}

	FUNC4(fd->search_key,
		FUNC1(tmp.thread.parentID),
		&tmp.thread.nodeName);
	return FUNC2(fd, hfs_find_rec_by_key);
}