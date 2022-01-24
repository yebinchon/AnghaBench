#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {int dummy; } ;
struct nfs_unlinkdata {TYPE_1__* dentry; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* unlink_rpc_prepare ) (struct rpc_task*,struct nfs_unlinkdata*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  d_parent; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*,struct nfs_unlinkdata*) ; 

__attribute__((used)) static void FUNC3(struct rpc_task *task, void *calldata)
{
	struct nfs_unlinkdata *data = calldata;
	struct inode *dir = FUNC1(data->dentry->d_parent);
	FUNC0(dir)->unlink_rpc_prepare(task, data);
}