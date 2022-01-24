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
struct ocfs2_dx_root_block {int dummy; } ;
struct ocfs2_dir_lookup_result {struct buffer_head* dl_dx_root_bh; } ;
struct ocfs2_dinode {int dummy; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*,int,struct inode*,struct ocfs2_dx_root_block*,struct ocfs2_dir_lookup_result*) ; 
 int FUNC3 (struct inode*,struct ocfs2_dinode*,struct buffer_head**) ; 
 int FUNC4 (struct inode*,struct buffer_head**) ; 

__attribute__((used)) static int FUNC5(const char *name, int namelen,
			       struct inode *dir,
			       struct ocfs2_dir_lookup_result *lookup)
{
	int ret;
	struct buffer_head *di_bh = NULL;
	struct ocfs2_dinode *di;
	struct buffer_head *dx_root_bh = NULL;
	struct ocfs2_dx_root_block *dx_root;

	ret = FUNC4(dir, &di_bh);
	if (ret) {
		FUNC1(ret);
		goto out;
	}

	di = (struct ocfs2_dinode *)di_bh->b_data;

	ret = FUNC3(dir, di, &dx_root_bh);
	if (ret) {
		FUNC1(ret);
		goto out;
	}
	dx_root = (struct ocfs2_dx_root_block *) dx_root_bh->b_data;

	ret = FUNC2(name, namelen, dir, dx_root, lookup);
	if (ret) {
		if (ret != -ENOENT)
			FUNC1(ret);
		goto out;
	}

	lookup->dl_dx_root_bh = dx_root_bh;
	dx_root_bh = NULL;
out:
	FUNC0(di_bh);
	FUNC0(dx_root_bh);
	return ret;
}