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
struct rpc_clnt {int dummy; } ;
struct rpc_auth_create_args {int dummy; } ;
struct gss_auth {int /*<<< orphan*/  rpc_auth; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gss_auth*) ; 
 struct gss_auth* FUNC1 (struct rpc_auth_create_args const*,struct rpc_clnt*,struct gss_auth*) ; 
 struct gss_auth* FUNC2 (struct rpc_auth_create_args const*,struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct gss_auth *
FUNC4(const struct rpc_auth_create_args *args,
		  struct rpc_clnt *clnt)
{
	struct gss_auth *gss_auth;
	struct gss_auth *new;

	gss_auth = FUNC1(args, clnt, NULL);
	if (gss_auth != NULL)
		goto out;
	new = FUNC2(args, clnt);
	if (FUNC0(new))
		return new;
	gss_auth = FUNC1(args, clnt, new);
	if (gss_auth != new)
		FUNC3(&new->rpc_auth);
out:
	return gss_auth;
}