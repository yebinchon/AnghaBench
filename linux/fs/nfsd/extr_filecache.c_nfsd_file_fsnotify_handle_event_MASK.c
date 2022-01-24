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
struct qstr {int dummy; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_mode; } ;
struct fsnotify_iter_info {int dummy; } ;
struct fsnotify_group {int dummy; } ;

/* Variables and functions */
 int FS_ATTRIB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int) ; 

__attribute__((used)) static int
FUNC4(struct fsnotify_group *group,
				struct inode *inode,
				u32 mask, const void *data, int data_type,
				const struct qstr *file_name, u32 cookie,
				struct fsnotify_iter_info *iter_info)
{
	FUNC3(inode, mask);

	/* Should be no marks on non-regular files */
	if (!FUNC0(inode->i_mode)) {
		FUNC1(1);
		return 0;
	}

	/* don't close files if this was not the last link */
	if (mask & FS_ATTRIB) {
		if (inode->i_nlink)
			return 0;
	}

	FUNC2(inode);
	return 0;
}