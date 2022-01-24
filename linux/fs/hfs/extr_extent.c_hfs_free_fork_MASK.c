#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct hfs_find_data {TYPE_2__* key; } ;
struct hfs_extent {int /*<<< orphan*/  count; } ;
struct hfs_cat_file {struct hfs_extent* RExtRec; int /*<<< orphan*/  RPyLen; struct hfs_extent* ExtRec; int /*<<< orphan*/  PyLen; int /*<<< orphan*/  FlNum; } ;
struct TYPE_6__ {int /*<<< orphan*/  ext_tree; scalar_t__ alloc_blksz; } ;
struct TYPE_4__ {int /*<<< orphan*/  FABN; } ;
struct TYPE_5__ {TYPE_1__ ext; } ;

/* Variables and functions */
 int HFS_FK_DATA ; 
 TYPE_3__* FUNC0 (struct super_block*) ; 
 int FUNC1 (struct hfs_find_data*,struct hfs_extent*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hfs_find_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct hfs_find_data*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct hfs_find_data*) ; 
 int FUNC7 (struct super_block*,struct hfs_extent*,scalar_t__,scalar_t__) ; 

int FUNC8(struct super_block *sb, struct hfs_cat_file *file, int type)
{
	struct hfs_find_data fd;
	u32 total_blocks, blocks, start;
	u32 cnid = FUNC3(file->FlNum);
	struct hfs_extent *extent;
	int res, i;

	if (type == HFS_FK_DATA) {
		total_blocks = FUNC3(file->PyLen);
		extent = file->ExtRec;
	} else {
		total_blocks = FUNC3(file->RPyLen);
		extent = file->RExtRec;
	}
	total_blocks /= FUNC0(sb)->alloc_blksz;
	if (!total_blocks)
		return 0;

	blocks = 0;
	for (i = 0; i < 3; i++)
		blocks += FUNC2(extent[i].count);

	res = FUNC7(sb, extent, blocks, blocks);
	if (res)
		return res;
	if (total_blocks == blocks)
		return 0;

	res = FUNC6(FUNC0(sb)->ext_tree, &fd);
	if (res)
		return res;
	do {
		res = FUNC1(&fd, extent, cnid, total_blocks, type);
		if (res)
			break;
		start = FUNC2(fd.key->ext.FABN);
		FUNC7(sb, extent, total_blocks - start, total_blocks);
		FUNC4(&fd);
		total_blocks = start;
	} while (total_blocks > blocks);
	FUNC5(&fd);

	return res;
}