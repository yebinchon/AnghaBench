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
struct kern_ipc_perm {int id; } ;
struct ipc_params {int /*<<< orphan*/  flg; } ;
struct ipc_ops {int (* associate ) (struct kern_ipc_perm*,int /*<<< orphan*/ ) ;} ;
struct ipc_namespace {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 scalar_t__ FUNC0 (struct ipc_namespace*,struct kern_ipc_perm*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kern_ipc_perm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ipc_namespace *ns,
			   struct kern_ipc_perm *ipcp,
			   const struct ipc_ops *ops,
			   struct ipc_params *params)
{
	int err;

	if (FUNC0(ns, ipcp, params->flg))
		err = -EACCES;
	else {
		err = ops->associate(ipcp, params->flg);
		if (!err)
			err = ipcp->id;
	}

	return err;
}