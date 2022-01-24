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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {int /*<<< orphan*/  s_num_meta_stolen; scalar_t__ slot_num; } ;
struct ocfs2_alloc_context {int ac_bits_wanted; int /*<<< orphan*/  ac_group_search; int /*<<< orphan*/  ac_which; } ;

/* Variables and functions */
 int ALLOC_GROUPS_FROM_GLOBAL ; 
 int ALLOC_NEW_GROUP ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  EXTENT_ALLOC_SYSTEM_INODE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OCFS2_AC_USE_META ; 
 int OCFS2_INVALID_SLOT ; 
 scalar_t__ OCFS2_MAX_TO_STEAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ocfs2_alloc_context* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  ocfs2_block_group_search ; 
 int /*<<< orphan*/  FUNC5 (struct ocfs2_alloc_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_alloc_context*) ; 
 int FUNC7 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_super*) ; 
 int FUNC9 (struct ocfs2_super*,struct ocfs2_alloc_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct ocfs2_super*,struct ocfs2_alloc_context*) ; 

int FUNC11(struct ocfs2_super *osb,
				      int blocks,
				      struct ocfs2_alloc_context **ac)
{
	int status;
	int slot = FUNC7(osb);

	*ac = FUNC3(sizeof(struct ocfs2_alloc_context), GFP_KERNEL);
	if (!(*ac)) {
		status = -ENOMEM;
		FUNC4(status);
		goto bail;
	}

	(*ac)->ac_bits_wanted = blocks;
	(*ac)->ac_which = OCFS2_AC_USE_META;
	(*ac)->ac_group_search = ocfs2_block_group_search;

	if (slot != OCFS2_INVALID_SLOT &&
		FUNC1(&osb->s_num_meta_stolen) < OCFS2_MAX_TO_STEAL)
		goto extent_steal;

	FUNC2(&osb->s_num_meta_stolen, 0);
	status = FUNC9(osb, (*ac),
					     EXTENT_ALLOC_SYSTEM_INODE,
					     (u32)osb->slot_num, NULL,
					     ALLOC_GROUPS_FROM_GLOBAL|ALLOC_NEW_GROUP);


	if (status >= 0) {
		status = 0;
		if (slot != OCFS2_INVALID_SLOT)
			FUNC8(osb);
		goto bail;
	} else if (status < 0 && status != -ENOSPC) {
		FUNC4(status);
		goto bail;
	}

	FUNC5(*ac);

extent_steal:
	status = FUNC10(osb, *ac);
	FUNC0(&osb->s_num_meta_stolen);
	if (status < 0) {
		if (status != -ENOSPC)
			FUNC4(status);
		goto bail;
	}

	status = 0;
bail:
	if ((status < 0) && *ac) {
		FUNC6(*ac);
		*ac = NULL;
	}

	if (status)
		FUNC4(status);
	return status;
}