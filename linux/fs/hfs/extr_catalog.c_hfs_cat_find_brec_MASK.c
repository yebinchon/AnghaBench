#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct hfs_find_data {TYPE_6__* search_key; } ;
typedef  int /*<<< orphan*/  rec ;
struct TYPE_10__ {int len; int /*<<< orphan*/  name; } ;
struct TYPE_11__ {TYPE_3__ CName; int /*<<< orphan*/  ParID; } ;
struct TYPE_12__ {int type; TYPE_4__ thread; } ;
typedef  TYPE_5__ hfs_cat_rec ;
struct TYPE_8__ {int len; int /*<<< orphan*/  name; } ;
struct TYPE_9__ {TYPE_1__ CName; int /*<<< orphan*/  ParID; } ;
struct TYPE_13__ {TYPE_2__ cat; } ;

/* Variables and functions */
 int EIO ; 
 int HFS_CDR_FTH ; 
 int HFS_CDR_THD ; 
 int HFS_NAMELEN ; 
 int FUNC0 (struct hfs_find_data*) ; 
 int FUNC1 (struct hfs_find_data*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(struct super_block *sb, u32 cnid,
		      struct hfs_find_data *fd)
{
	hfs_cat_rec rec;
	int res, len, type;

	FUNC2(sb, fd->search_key, cnid, NULL);
	res = FUNC1(fd, &rec, sizeof(rec));
	if (res)
		return res;

	type = rec.type;
	if (type != HFS_CDR_THD && type != HFS_CDR_FTH) {
		FUNC4("found bad thread record in catalog\n");
		return -EIO;
	}

	fd->search_key->cat.ParID = rec.thread.ParID;
	len = fd->search_key->cat.CName.len = rec.thread.CName.len;
	if (len > HFS_NAMELEN) {
		FUNC4("bad catalog namelength\n");
		return -EIO;
	}
	FUNC3(fd->search_key->cat.CName.name, rec.thread.CName.name, len);
	return FUNC0(fd);
}