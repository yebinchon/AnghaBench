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
struct super_block {int dummy; } ;
struct rpc_pipe {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct dentry* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_PIPE_DIRNAME ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC3 (struct dentry*,char*,int /*<<< orphan*/ *,struct rpc_pipe*) ; 

__attribute__((used)) static struct dentry *FUNC4(struct super_block *sb,
					    struct rpc_pipe *pipe)
{
	struct dentry *dir, *dentry;

	dir = FUNC2(sb, NFS_PIPE_DIRNAME);
	if (dir == NULL)
		return FUNC0(-ENOENT);
	dentry = FUNC3(dir, "blocklayout", NULL, pipe);
	FUNC1(dir);
	return dentry;
}