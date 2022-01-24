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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_alloc_context {int /*<<< orphan*/ * ac_inode; int /*<<< orphan*/  ac_max_block; int /*<<< orphan*/  ac_bits_wanted; } ;

/* Variables and functions */
 int ALLOC_GROUPS_FROM_GLOBAL ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ocfs2_alloc_context* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_alloc_context*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (struct ocfs2_super*,struct ocfs2_alloc_context*) ; 
 int FUNC10 (struct ocfs2_super*,int /*<<< orphan*/ ,struct ocfs2_alloc_context*) ; 
 int FUNC11 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct ocfs2_super *osb,
					     u32 bits_wanted, u64 max_block,
					     int flags,
					     struct ocfs2_alloc_context **ac)
{
	int status, ret = 0;
	int retried = 0;

	*ac = FUNC3(sizeof(struct ocfs2_alloc_context), GFP_KERNEL);
	if (!(*ac)) {
		status = -ENOMEM;
		FUNC4(status);
		goto bail;
	}

	(*ac)->ac_bits_wanted = bits_wanted;
	(*ac)->ac_max_block = max_block;

	status = -ENOSPC;
	if (!(flags & ALLOC_GROUPS_FROM_GLOBAL) &&
	    FUNC5(osb, bits_wanted)) {
		status = FUNC10(osb,
							bits_wanted,
							*ac);
		if ((status < 0) && (status != -ENOSPC)) {
			FUNC4(status);
			goto bail;
		}
	}

	if (status == -ENOSPC) {
retry:
		status = FUNC9(osb, *ac);
		/* Retry if there is sufficient space cached in truncate log */
		if (status == -ENOSPC && !retried) {
			retried = 1;
			FUNC8((*ac)->ac_inode, 1);
			FUNC1((*ac)->ac_inode);

			ret = FUNC11(osb, bits_wanted);
			if (ret == 1) {
				FUNC2((*ac)->ac_inode);
				(*ac)->ac_inode = NULL;
				goto retry;
			}

			if (ret < 0)
				FUNC4(ret);

			FUNC0((*ac)->ac_inode);
			ret = FUNC7((*ac)->ac_inode, NULL, 1);
			if (ret < 0) {
				FUNC4(ret);
				FUNC1((*ac)->ac_inode);
				FUNC2((*ac)->ac_inode);
				(*ac)->ac_inode = NULL;
				goto bail;
			}
		}
		if (status < 0) {
			if (status != -ENOSPC)
				FUNC4(status);
			goto bail;
		}
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