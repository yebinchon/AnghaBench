#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int /*<<< orphan*/  s_blocksize; } ;
struct ocfs2_xattr_value_buf {int /*<<< orphan*/  vb_access; } ;
struct ocfs2_reflink_xattr_tree_args {TYPE_3__* new_bucket; TYPE_3__* old_bucket; TYPE_6__* reflink; } ;
struct ocfs2_alloc_context {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_18__ {int /*<<< orphan*/  xh_num_buckets; TYPE_2__* xh_entries; } ;
struct TYPE_17__ {TYPE_1__* old_inode; } ;
struct TYPE_16__ {int bu_blocks; int /*<<< orphan*/ * bu_bhs; } ;
struct TYPE_15__ {int /*<<< orphan*/  xe_name_hash; } ;
struct TYPE_14__ {struct super_block* i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_CREATE ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 TYPE_7__* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  ocfs2_get_reflink_xattr_value_root ; 
 int FUNC6 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  ocfs2_journal_access ; 
 int FUNC7 (TYPE_3__*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,TYPE_7__*,struct ocfs2_xattr_value_buf*,struct ocfs2_alloc_context*,int /*<<< orphan*/ ,struct ocfs2_reflink_xattr_tree_args*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC12(handle_t *handle,
				u64 blkno, u64 new_blkno, u32 clusters,
				u32 *cpos, int num_buckets,
				struct ocfs2_alloc_context *meta_ac,
				struct ocfs2_alloc_context *data_ac,
				struct ocfs2_reflink_xattr_tree_args *args)
{
	int i, j, ret = 0;
	struct super_block *sb = args->reflink->old_inode->i_sb;
	int bpb = args->old_bucket->bu_blocks;
	struct ocfs2_xattr_value_buf vb = {
		.vb_access = ocfs2_journal_access,
	};

	for (i = 0; i < num_buckets; i++, blkno += bpb, new_blkno += bpb) {
		ret = FUNC7(args->old_bucket, blkno);
		if (ret) {
			FUNC5(ret);
			break;
		}

		ret = FUNC6(args->new_bucket, new_blkno, 1);
		if (ret) {
			FUNC5(ret);
			break;
		}

		ret = FUNC9(handle,
						args->new_bucket,
						OCFS2_JOURNAL_ACCESS_CREATE);
		if (ret) {
			FUNC5(ret);
			break;
		}

		for (j = 0; j < bpb; j++)
			FUNC4(FUNC0(args->new_bucket, j),
			       FUNC0(args->old_bucket, j),
			       sb->s_blocksize);

		/*
		 * Record the start cpos so that we can use it to initialize
		 * our xattr tree we also set the xh_num_bucket for the new
		 * bucket.
		 */
		if (i == 0) {
			*cpos = FUNC3(FUNC1(args->new_bucket)->
					    xh_entries[0].xe_name_hash);
			FUNC1(args->new_bucket)->xh_num_buckets =
				FUNC2(num_buckets);
		}

		FUNC10(handle, args->new_bucket);

		ret = FUNC8(handle, args->reflink,
					args->old_bucket->bu_bhs[0],
					FUNC1(args->old_bucket),
					args->new_bucket->bu_bhs[0],
					FUNC1(args->new_bucket),
					&vb, meta_ac,
					ocfs2_get_reflink_xattr_value_root,
					args);
		if (ret) {
			FUNC5(ret);
			break;
		}

		/*
		 * Re-access and dirty the bucket to calculate metaecc.
		 * Because we may extend the transaction in reflink_xattr_header
		 * which will let the already accessed block gone.
		 */
		ret = FUNC9(handle,
						args->new_bucket,
						OCFS2_JOURNAL_ACCESS_WRITE);
		if (ret) {
			FUNC5(ret);
			break;
		}

		FUNC10(handle, args->new_bucket);

		FUNC11(args->old_bucket);
		FUNC11(args->new_bucket);
	}

	FUNC11(args->old_bucket);
	FUNC11(args->new_bucket);
	return ret;
}