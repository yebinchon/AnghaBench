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
struct ipc_params {int dummy; } ;
struct ipc_ops {int (* getnew ) (struct ipc_namespace*,struct ipc_params*) ;} ;
struct ipc_namespace {int dummy; } ;
struct ipc_ids {int /*<<< orphan*/  rwsem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ipc_namespace*,struct ipc_params*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ipc_namespace *ns, struct ipc_ids *ids,
		const struct ipc_ops *ops, struct ipc_params *params)
{
	int err;

	FUNC0(&ids->rwsem);
	err = ops->getnew(ns, params);
	FUNC2(&ids->rwsem);
	return err;
}