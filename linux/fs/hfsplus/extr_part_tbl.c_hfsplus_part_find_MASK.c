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
struct super_block {int dummy; } ;
typedef  scalar_t__ sector_t ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  HFS_NEW_PMAP_MAGIC 129 
#define  HFS_OLD_PMAP_MAGIC 128 
 scalar_t__ HFS_PMAP_BLK ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct super_block*,void*,void*,scalar_t__*,scalar_t__*) ; 
 int FUNC2 (struct super_block*,void*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int FUNC4 (struct super_block*,scalar_t__,void*,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct super_block *sb,
		sector_t *part_start, sector_t *part_size)
{
	void *buf, *data;
	int res;

	buf = FUNC6(FUNC3(sb), GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	res = FUNC4(sb, *part_start + HFS_PMAP_BLK,
				 buf, &data, REQ_OP_READ, 0);
	if (res)
		goto out;

	switch (FUNC0(*((__be16 *)data))) {
	case HFS_OLD_PMAP_MAGIC:
		res = FUNC2(sb, data, part_start, part_size);
		break;
	case HFS_NEW_PMAP_MAGIC:
		res = FUNC1(sb, buf, data, part_start, part_size);
		break;
	default:
		res = -ENOENT;
		break;
	}
out:
	FUNC5(buf);
	return res;
}