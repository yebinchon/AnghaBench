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
struct nfs_net {struct dentry* bl_device_pipe; int /*<<< orphan*/  bl_wq; int /*<<< orphan*/  bl_mutex; } ;
struct net {int dummy; } ;
struct dentry {struct dentry* dentry; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  bl_upcall_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct nfs_net* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC5 (struct net*,struct dentry*) ; 
 int /*<<< orphan*/  nfs_net_id ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 struct dentry* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net *net)
{
	struct nfs_net *nn = FUNC4(net, nfs_net_id);
	struct dentry *dentry;

	FUNC3(&nn->bl_mutex);
	FUNC2(&nn->bl_wq);
	nn->bl_device_pipe = FUNC7(&bl_upcall_ops, 0);
	if (FUNC0(nn->bl_device_pipe))
		return FUNC1(nn->bl_device_pipe);
	dentry = FUNC5(net, nn->bl_device_pipe);
	if (FUNC0(dentry)) {
		FUNC6(nn->bl_device_pipe);
		return FUNC1(dentry);
	}
	nn->bl_device_pipe->dentry = dentry;
	return 0;
}