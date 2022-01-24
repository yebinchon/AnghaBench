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
typedef  int /*<<< orphan*/  u32 ;
struct rpc_program {int /*<<< orphan*/  number; } ;
struct rpc_create_args {int /*<<< orphan*/  cred; int /*<<< orphan*/  authflavor; int /*<<< orphan*/  version; int /*<<< orphan*/  prognumber; struct rpc_program const* program; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_cred; TYPE_1__* cl_auth; } ;
struct TYPE_2__ {int /*<<< orphan*/  au_flavor; } ;

/* Variables and functions */
 struct rpc_clnt* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct rpc_clnt*) ; 
 struct rpc_clnt* FUNC2 (struct rpc_create_args*,struct rpc_clnt*) ; 
 int FUNC3 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_clnt*) ; 

struct rpc_clnt *FUNC5(struct rpc_clnt *old,
				      const struct rpc_program *program,
				      u32 vers)
{
	struct rpc_create_args args = {
		.program	= program,
		.prognumber	= program->number,
		.version	= vers,
		.authflavor	= old->cl_auth->au_flavor,
		.cred		= old->cl_cred,
	};
	struct rpc_clnt *clnt;
	int err;

	clnt = FUNC2(&args, old);
	if (FUNC1(clnt))
		goto out;
	err = FUNC3(clnt);
	if (err != 0) {
		FUNC4(clnt);
		clnt = FUNC0(err);
	}
out:
	return clnt;
}