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
typedef  int /*<<< orphan*/  u32 ;
struct rpc_clnt {struct rpc_auth* cl_auth; } ;
struct rpc_authops {struct rpc_auth* (* create ) (struct rpc_auth_create_args const*,struct rpc_clnt*) ;} ;
struct rpc_auth_create_args {int /*<<< orphan*/  pseudoflavor; } ;
struct rpc_auth {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct rpc_auth* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rpc_auth*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct rpc_authops* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_authops const*) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_auth*) ; 
 struct rpc_auth* FUNC6 (struct rpc_auth_create_args const*,struct rpc_clnt*) ; 

struct rpc_auth *
FUNC7(const struct rpc_auth_create_args *args, struct rpc_clnt *clnt)
{
	struct rpc_auth	*auth = FUNC0(-EINVAL);
	const struct rpc_authops *ops;
	u32 flavor = FUNC2(args->pseudoflavor);

	ops = FUNC3(flavor);
	if (ops == NULL)
		goto out;

	auth = ops->create(args, clnt);

	FUNC4(ops);
	if (FUNC1(auth))
		return auth;
	if (clnt->cl_auth)
		FUNC5(clnt->cl_auth);
	clnt->cl_auth = auth;

out:
	return auth;
}