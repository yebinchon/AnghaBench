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
struct ocfs2_dir_lookup_result {int /*<<< orphan*/ * member_0; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char const*,int,int /*<<< orphan*/ *,struct inode*,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_dir_lookup_result*) ; 

int FUNC2(struct inode *dir, const char *name,
			       int namelen, u64 *blkno)
{
	int ret;
	struct ocfs2_dir_lookup_result lookup = { NULL, };

	ret = FUNC0(name, namelen, blkno, dir, &lookup);
	FUNC1(&lookup);

	return ret;
}