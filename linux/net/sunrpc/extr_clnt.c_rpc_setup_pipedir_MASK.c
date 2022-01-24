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
struct super_block {int dummy; } ;
struct rpc_clnt {TYPE_1__* cl_program; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pipe_dir_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct super_block*,struct rpc_clnt*) ; 

__attribute__((used)) static int
FUNC3(struct super_block *pipefs_sb, struct rpc_clnt *clnt)
{
	struct dentry *dentry;

	if (clnt->cl_program->pipe_dir_name != NULL) {
		dentry = FUNC2(pipefs_sb, clnt);
		if (FUNC0(dentry))
			return FUNC1(dentry);
	}
	return 0;
}