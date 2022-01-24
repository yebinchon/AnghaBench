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
typedef  int u32 ;
struct ocfs2_super {int /*<<< orphan*/  osb_lock; struct inode** local_system_inodes; int /*<<< orphan*/  max_slots; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int NUM_LOCAL_SYSTEM_INODES ; 
 int OCFS2_FIRST_LOCAL_SYSTEM_INODE ; 
 int OCFS2_INVALID_SLOT ; 
 int OCFS2_LAST_LOCAL_SYSTEM_INODE ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode**) ; 
 struct inode** FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct inode **FUNC8(struct ocfs2_super *osb,
					     int type,
					     u32 slot)
{
	int index;
	struct inode **local_system_inodes, **free = NULL;

	FUNC0(slot == OCFS2_INVALID_SLOT);
	FUNC0(type < OCFS2_FIRST_LOCAL_SYSTEM_INODE ||
	       type > OCFS2_LAST_LOCAL_SYSTEM_INODE);

	FUNC5(&osb->osb_lock);
	local_system_inodes = osb->local_system_inodes;
	FUNC6(&osb->osb_lock);

	if (FUNC7(!local_system_inodes)) {
		local_system_inodes =
			FUNC3(FUNC1(sizeof(struct inode *),
					    NUM_LOCAL_SYSTEM_INODES,
					    osb->max_slots),
				GFP_NOFS);
		if (!local_system_inodes) {
			FUNC4(-ENOMEM);
			/*
			 * return NULL here so that ocfs2_get_sytem_file_inodes
			 * will try to create an inode and use it. We will try
			 * to initialize local_system_inodes next time.
			 */
			return NULL;
		}

		FUNC5(&osb->osb_lock);
		if (osb->local_system_inodes) {
			/* Someone has initialized it for us. */
			free = local_system_inodes;
			local_system_inodes = osb->local_system_inodes;
		} else
			osb->local_system_inodes = local_system_inodes;
		FUNC6(&osb->osb_lock);
		FUNC2(free);
	}

	index = (slot * NUM_LOCAL_SYSTEM_INODES) +
		(type - OCFS2_FIRST_LOCAL_SYSTEM_INODE);

	return &local_system_inodes[index];
}