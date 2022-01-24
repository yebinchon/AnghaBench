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
struct net {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct dentry* FUNC0 (struct super_block*,struct rpc_pipe*) ; 
 struct super_block* FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 

__attribute__((used)) static struct dentry *FUNC3(struct net *net,
						   struct rpc_pipe *pipe)
{
	struct super_block *pipefs_sb;
	struct dentry *dentry;

	pipefs_sb = FUNC1(net);
	if (!pipefs_sb)
		return NULL;
	dentry = FUNC0(pipefs_sb, pipe);
	FUNC2(net);
	return dentry;
}