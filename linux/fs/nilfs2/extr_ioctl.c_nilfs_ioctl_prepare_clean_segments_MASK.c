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
struct the_nilfs {int /*<<< orphan*/  ns_sb; } ;
struct nilfs_argv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC0 (struct the_nilfs*,struct nilfs_argv*,void*) ; 
 int FUNC1 (struct the_nilfs*,struct nilfs_argv*,void*) ; 
 int FUNC2 (struct the_nilfs*,struct nilfs_argv*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char const*) ; 

int FUNC4(struct the_nilfs *nilfs,
				       struct nilfs_argv *argv, void **kbufs)
{
	const char *msg;
	int ret;

	ret = FUNC0(nilfs, &argv[1], kbufs[1]);
	if (ret < 0) {
		/*
		 * can safely abort because checkpoints can be removed
		 * independently.
		 */
		msg = "cannot delete checkpoints";
		goto failed;
	}
	ret = FUNC1(nilfs, &argv[2], kbufs[2]);
	if (ret < 0) {
		/*
		 * can safely abort because DAT file is updated atomically
		 * using a copy-on-write technique.
		 */
		msg = "cannot delete virtual blocks from DAT file";
		goto failed;
	}
	ret = FUNC2(nilfs, &argv[3], kbufs[3]);
	if (ret < 0) {
		/*
		 * can safely abort because the operation is nondestructive.
		 */
		msg = "cannot mark copying blocks dirty";
		goto failed;
	}
	return 0;

 failed:
	FUNC3(nilfs->ns_sb, KERN_ERR, "error %d preparing GC: %s", ret,
		  msg);
	return ret;
}