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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct super_block {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int ip_clusters; int /*<<< orphan*/  ip_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int FUNC3 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct inode*,int*,int,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ *,struct ocfs2_alloc_context*,struct ocfs2_alloc_context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct super_block*,int) ; 
 int FUNC10 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct buffer_head* FUNC11 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct super_block *sb,
			       handle_t *handle,
			       struct inode *dir,
			       struct buffer_head *parent_fe_bh,
			       struct ocfs2_alloc_context *data_ac,
			       struct ocfs2_alloc_context *meta_ac,
			       struct buffer_head **new_bh)
{
	int status;
	int extend, did_quota = 0;
	u64 p_blkno, v_blkno;

	FUNC12(&FUNC1(dir)->ip_lock);
	extend = (FUNC5(dir) == FUNC9(sb, FUNC1(dir)->ip_clusters));
	FUNC13(&FUNC1(dir)->ip_lock);

	if (extend) {
		u32 offset = FUNC1(dir)->ip_clusters;

		status = FUNC3(dir,
					FUNC9(sb, 1));
		if (status)
			goto bail;
		did_quota = 1;

		status = FUNC7(FUNC2(sb), dir, &offset,
					      1, 0, parent_fe_bh, handle,
					      data_ac, meta_ac, NULL);
		FUNC0(status == -EAGAIN);
		if (status < 0) {
			FUNC6(status);
			goto bail;
		}
	}

	v_blkno = FUNC8(sb, FUNC5(dir));
	status = FUNC10(dir, v_blkno, &p_blkno, NULL, NULL);
	if (status < 0) {
		FUNC6(status);
		goto bail;
	}

	*new_bh = FUNC11(sb, p_blkno);
	if (!*new_bh) {
		status = -ENOMEM;
		FUNC6(status);
		goto bail;
	}
	status = 0;
bail:
	if (did_quota && status < 0)
		FUNC4(dir, FUNC9(sb, 1));
	return status;
}