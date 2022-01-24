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
struct ocfs2_super {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  id_count; int /*<<< orphan*/  id_data; } ;
struct TYPE_5__ {TYPE_1__ i_data; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_dyn_features; TYPE_2__ id2; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {int ip_dyn_features; int /*<<< orphan*/  ip_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC13 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct inode *s_inode,
				       struct buffer_head *s_bh,
				       struct inode *t_inode,
				       struct buffer_head *t_bh)
{
	int ret;
	handle_t *handle;
	struct ocfs2_super *osb = FUNC4(s_inode->i_sb);
	struct ocfs2_dinode *s_di = (struct ocfs2_dinode *)s_bh->b_data;
	struct ocfs2_dinode *t_di = (struct ocfs2_dinode *)t_bh->b_data;

	FUNC0(!(FUNC3(s_inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL));

	handle = FUNC13(osb, OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC2(handle)) {
		ret = FUNC5(handle);
		FUNC9(ret);
		goto out;
	}

	ret = FUNC11(handle, FUNC1(t_inode), t_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC9(ret);
		goto out_commit;
	}

	t_di->id2.i_data.id_count = s_di->id2.i_data.id_count;
	FUNC8(t_di->id2.i_data.id_data, s_di->id2.i_data.id_data,
	       FUNC7(s_di->id2.i_data.id_count));
	FUNC14(&FUNC3(t_inode)->ip_lock);
	FUNC3(t_inode)->ip_dyn_features |= OCFS2_INLINE_DATA_FL;
	t_di->i_dyn_features = FUNC6(FUNC3(t_inode)->ip_dyn_features);
	FUNC15(&FUNC3(t_inode)->ip_lock);

	FUNC12(handle, t_bh);

out_commit:
	FUNC10(osb, handle);
out:
	return ret;
}