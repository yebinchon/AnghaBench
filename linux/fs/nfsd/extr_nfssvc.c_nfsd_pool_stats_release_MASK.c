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
struct net {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct net* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 int /*<<< orphan*/  nfsd_mutex ; 
 int FUNC3 (struct inode*,struct file*) ; 

int FUNC4(struct inode *inode, struct file *file)
{
	int ret = FUNC3(inode, file);
	struct net *net = inode->i_sb->s_fs_info;

	FUNC0(&nfsd_mutex);
	/* this function really, really should have been called svc_put() */
	FUNC2(net);
	FUNC1(&nfsd_mutex);
	return ret;
}