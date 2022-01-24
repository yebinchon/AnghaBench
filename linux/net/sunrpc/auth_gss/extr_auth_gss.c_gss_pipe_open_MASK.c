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
struct sunrpc_net {int pipe_version; int /*<<< orphan*/  pipe_users; } ;
struct net {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct net* s_fs_info; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sunrpc_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pipe_version_lock ; 
 int /*<<< orphan*/  pipe_version_rpc_waitqueue ; 
 int /*<<< orphan*/  pipe_version_waitqueue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, int new_version)
{
	struct net *net = inode->i_sb->s_fs_info;
	struct sunrpc_net *sn = FUNC1(net, sunrpc_net_id);
	int ret = 0;

	FUNC3(&pipe_version_lock);
	if (sn->pipe_version < 0) {
		/* First open of any gss pipe determines the version: */
		sn->pipe_version = new_version;
		FUNC2(&pipe_version_rpc_waitqueue);
		FUNC5(&pipe_version_waitqueue);
	} else if (sn->pipe_version != new_version) {
		/* Trying to open a pipe of a different version */
		ret = -EBUSY;
		goto out;
	}
	FUNC0(&sn->pipe_users);
out:
	FUNC4(&pipe_version_lock);
	return ret;

}