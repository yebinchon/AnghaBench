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
struct task_smack {int /*<<< orphan*/  smk_forked; int /*<<< orphan*/  smk_task; } ;
struct inode_smack {int /*<<< orphan*/  smk_inode; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 struct task_smack* FUNC0 (struct cred*) ; 
 struct inode_smack* FUNC1 (struct inode*) ; 

__attribute__((used)) static int FUNC2(struct cred *new,
					struct inode *inode)
{
	struct inode_smack *isp = FUNC1(inode);
	struct task_smack *tsp = FUNC0(new);

	tsp->smk_forked = isp->smk_inode;
	tsp->smk_task = tsp->smk_forked;
	return 0;
}