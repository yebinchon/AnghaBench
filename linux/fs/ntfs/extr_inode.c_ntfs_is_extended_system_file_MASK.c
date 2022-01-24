#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_17__ {TYPE_5__* ntfs_ino; TYPE_1__* mrec; TYPE_8__* attr; } ;
typedef  TYPE_6__ ntfs_attr_search_ctx ;
struct TYPE_13__ {int flags; int /*<<< orphan*/  value_length; int /*<<< orphan*/  value_offset; } ;
struct TYPE_14__ {TYPE_2__ resident; } ;
struct TYPE_19__ {TYPE_3__ data; scalar_t__ flags; scalar_t__ non_resident; int /*<<< orphan*/  length; } ;
struct TYPE_18__ {int /*<<< orphan*/  parent_directory; } ;
struct TYPE_16__ {TYPE_4__* vol; } ;
struct TYPE_15__ {int /*<<< orphan*/  sb; } ;
struct TYPE_12__ {int /*<<< orphan*/  bytes_in_use; int /*<<< orphan*/  link_count; } ;
typedef  TYPE_7__ FILE_NAME_ATTR ;
typedef  TYPE_8__ ATTR_RECORD ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FILE_NAME ; 
 int EIO ; 
 int ENOENT ; 
 scalar_t__ FILE_Extend ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RESIDENT_ATTR_IS_INDEXED ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(ntfs_attr_search_ctx *ctx)
{
	int nr_links, err;

	/* Restart search. */
	FUNC4(ctx);

	/* Get number of hard links. */
	nr_links = FUNC1(ctx->mrec->link_count);

	/* Loop through all hard links. */
	while (!(err = FUNC3(AT_FILE_NAME, NULL, 0, 0, 0, NULL, 0,
			ctx))) {
		FILE_NAME_ATTR *file_name_attr;
		ATTR_RECORD *attr = ctx->attr;
		u8 *p, *p2;

		nr_links--;
		/*
		 * Maximum sanity checking as we are called on an inode that
		 * we suspect might be corrupt.
		 */
		p = (u8*)attr + FUNC2(attr->length);
		if (p < (u8*)ctx->mrec || (u8*)p > (u8*)ctx->mrec +
				FUNC2(ctx->mrec->bytes_in_use)) {
err_corrupt_attr:
			FUNC5(ctx->ntfs_ino->vol->sb, "Corrupt file name "
					"attribute. You should run chkdsk.");
			return -EIO;
		}
		if (attr->non_resident) {
			FUNC5(ctx->ntfs_ino->vol->sb, "Non-resident file "
					"name. You should run chkdsk.");
			return -EIO;
		}
		if (attr->flags) {
			FUNC5(ctx->ntfs_ino->vol->sb, "File name with "
					"invalid flags. You should run "
					"chkdsk.");
			return -EIO;
		}
		if (!(attr->data.resident.flags & RESIDENT_ATTR_IS_INDEXED)) {
			FUNC5(ctx->ntfs_ino->vol->sb, "Unindexed file "
					"name. You should run chkdsk.");
			return -EIO;
		}
		file_name_attr = (FILE_NAME_ATTR*)((u8*)attr +
				FUNC1(attr->data.resident.value_offset));
		p2 = (u8*)attr + FUNC2(attr->data.resident.value_length);
		if (p2 < (u8*)attr || p2 > p)
			goto err_corrupt_attr;
		/* This attribute is ok, but is it in the $Extend directory? */
		if (FUNC0(file_name_attr->parent_directory) == FILE_Extend)
			return 1;	/* YES, it's an extended system file. */
	}
	if (FUNC6(err != -ENOENT))
		return err;
	if (FUNC6(nr_links)) {
		FUNC5(ctx->ntfs_ino->vol->sb, "Inode hard link count "
				"doesn't match number of name attributes. You "
				"should run chkdsk.");
		return -EIO;
	}
	return 0;	/* NO, it is not an extended system file. */
}