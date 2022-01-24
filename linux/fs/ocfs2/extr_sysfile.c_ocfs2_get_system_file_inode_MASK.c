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
struct ocfs2_super {int /*<<< orphan*/  system_file_mutex; struct inode** global_system_inodes; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct inode* FUNC1 (struct ocfs2_super*,int,int /*<<< orphan*/ ) ; 
 struct inode** FUNC2 (struct ocfs2_super*,int,int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct inode *FUNC7(struct ocfs2_super *osb,
					  int type,
					  u32 slot)
{
	struct inode *inode = NULL;
	struct inode **arr = NULL;

	/* avoid the lookup if cached in local system file array */
	if (FUNC4(type)) {
		arr = &(osb->global_system_inodes[type]);
	} else
		arr = FUNC2(osb, type, slot);

	FUNC5(&osb->system_file_mutex);
	if (arr && ((inode = *arr) != NULL)) {
		/* get a ref in addition to the array ref */
		inode = FUNC3(inode);
		FUNC6(&osb->system_file_mutex);
		FUNC0(!inode);

		return inode;
	}

	/* this gets one ref thru iget */
	inode = FUNC1(osb, type, slot);

	/* add one more if putting into array for first time */
	if (arr && inode) {
		*arr = FUNC3(inode);
		FUNC0(!*arr);
	}
	FUNC6(&osb->system_file_mutex);
	return inode;
}