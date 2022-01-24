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
struct fuse_conn {int dev; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* s_root; } ;

/* Variables and functions */
 int ENOMEM ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  fuse_conn_congestion_threshold_ops ; 
 int /*<<< orphan*/  fuse_conn_max_background_ops ; 
 TYPE_1__* fuse_control_sb ; 
 int /*<<< orphan*/  fuse_ctl_abort_ops ; 
 struct dentry* FUNC1 (struct dentry*,struct fuse_conn*,char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_conn*) ; 
 int /*<<< orphan*/  fuse_ctl_waiting_ops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  simple_dir_inode_operations ; 
 int /*<<< orphan*/  simple_dir_operations ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

int FUNC5(struct fuse_conn *fc)
{
	struct dentry *parent;
	char name[32];

	if (!fuse_control_sb)
		return 0;

	parent = fuse_control_sb->s_root;
	FUNC3(FUNC0(parent));
	FUNC4(name, "%u", fc->dev);
	parent = FUNC1(parent, fc, name, S_IFDIR | 0500, 2,
				     &simple_dir_inode_operations,
				     &simple_dir_operations);
	if (!parent)
		goto err;

	if (!FUNC1(parent, fc, "waiting", S_IFREG | 0400, 1,
				 NULL, &fuse_ctl_waiting_ops) ||
	    !FUNC1(parent, fc, "abort", S_IFREG | 0200, 1,
				 NULL, &fuse_ctl_abort_ops) ||
	    !FUNC1(parent, fc, "max_background", S_IFREG | 0600,
				 1, NULL, &fuse_conn_max_background_ops) ||
	    !FUNC1(parent, fc, "congestion_threshold",
				 S_IFREG | 0600, 1, NULL,
				 &fuse_conn_congestion_threshold_ops))
		goto err;

	return 0;

 err:
	FUNC2(fc);
	return -ENOMEM;
}