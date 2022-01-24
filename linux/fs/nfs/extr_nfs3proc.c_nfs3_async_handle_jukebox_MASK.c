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
struct rpc_task {int /*<<< orphan*/  tk_status; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EJUKEBOX ; 
 int /*<<< orphan*/  NFSIOS_DELAY ; 
 int /*<<< orphan*/  NFS_JUKEBOX_RETRY_TIME ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*) ; 

__attribute__((used)) static int
FUNC3(struct rpc_task *task, struct inode *inode)
{
	if (task->tk_status != -EJUKEBOX)
		return 0;
	if (task->tk_status == -EJUKEBOX)
		FUNC0(inode, NFSIOS_DELAY);
	task->tk_status = 0;
	FUNC2(task);
	FUNC1(task, NFS_JUKEBOX_RETRY_TIME);
	return 1;
}