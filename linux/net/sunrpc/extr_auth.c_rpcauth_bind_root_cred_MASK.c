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
struct rpc_task {TYPE_1__* tk_client; } ;
struct rpc_cred {int dummy; } ;
struct rpc_auth {TYPE_2__* au_ops; } ;
struct auth_cred {int /*<<< orphan*/  cred; } ;
struct TYPE_4__ {struct rpc_cred* (* lookup_cred ) (struct rpc_auth*,struct auth_cred*,int) ;} ;
struct TYPE_3__ {struct rpc_auth* cl_auth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  init_task ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct rpc_cred* FUNC2 (struct rpc_auth*,struct auth_cred*,int) ; 

__attribute__((used)) static struct rpc_cred *
FUNC3(struct rpc_task *task, int lookupflags)
{
	struct rpc_auth *auth = task->tk_client->cl_auth;
	struct auth_cred acred = {
		.cred = FUNC0(&init_task),
	};
	struct rpc_cred *ret;

	ret = auth->au_ops->lookup_cred(auth, &acred, lookupflags);
	FUNC1(acred.cred);
	return ret;
}