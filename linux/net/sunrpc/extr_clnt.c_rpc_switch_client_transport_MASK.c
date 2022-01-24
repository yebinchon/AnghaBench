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
struct xprt_create {int dummy; } ;
struct rpc_xprt_switch {int dummy; } ;
struct rpc_xprt {int dummy; } ;
struct rpc_timeout {int dummy; } ;
struct rpc_clnt {struct rpc_clnt* cl_parent; int /*<<< orphan*/  cl_xpi; struct rpc_timeout* cl_timeout; TYPE_1__* cl_auth; } ;
typedef  int /*<<< orphan*/  rpc_authflavor_t ;
struct TYPE_2__ {int /*<<< orphan*/  au_flavor; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct rpc_xprt*) ; 
 int FUNC1 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct rpc_clnt*) ; 
 int FUNC4 (struct rpc_clnt*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rpc_clnt*) ; 
 struct rpc_xprt* FUNC6 (struct rpc_clnt*,struct rpc_xprt*,struct rpc_timeout const*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 struct rpc_xprt* FUNC10 (struct xprt_create*) ; 
 struct rpc_xprt_switch* FUNC11 (int /*<<< orphan*/ *,struct rpc_xprt_switch*) ; 
 int /*<<< orphan*/  FUNC12 (struct rpc_xprt*) ; 
 struct rpc_xprt_switch* FUNC13 (struct rpc_xprt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct rpc_xprt_switch*) ; 

int FUNC15(struct rpc_clnt *clnt,
		struct xprt_create *args,
		const struct rpc_timeout *timeout)
{
	const struct rpc_timeout *old_timeo;
	rpc_authflavor_t pseudoflavor;
	struct rpc_xprt_switch *xps, *oldxps;
	struct rpc_xprt *xprt, *old;
	struct rpc_clnt *parent;
	int err;

	xprt = FUNC10(args);
	if (FUNC0(xprt)) {
		FUNC3("RPC:       failed to create new xprt for clnt %p\n",
			clnt);
		return FUNC1(xprt);
	}

	xps = FUNC13(xprt, GFP_KERNEL);
	if (xps == NULL) {
		FUNC12(xprt);
		return -ENOMEM;
	}

	pseudoflavor = clnt->cl_auth->au_flavor;

	old_timeo = clnt->cl_timeout;
	old = FUNC6(clnt, xprt, timeout);
	oldxps = FUNC11(&clnt->cl_xpi, xps);

	FUNC8(clnt);
	FUNC2(clnt);
	FUNC5(clnt);

	/*
	 * A new transport was created.  "clnt" therefore
	 * becomes the root of a new cl_parent tree.  clnt's
	 * children, if it has any, still point to the old xprt.
	 */
	parent = clnt->cl_parent;
	clnt->cl_parent = clnt;

	/*
	 * The old rpc_auth cache cannot be re-used.  GSS
	 * contexts in particular are between a single
	 * client and server.
	 */
	err = FUNC4(clnt, pseudoflavor, NULL);
	if (err)
		goto out_revert;

	FUNC9();
	if (parent != clnt)
		FUNC7(parent);
	FUNC14(oldxps);
	FUNC12(old);
	FUNC3("RPC:       replaced xprt for clnt %p\n", clnt);
	return 0;

out_revert:
	xps = FUNC11(&clnt->cl_xpi, oldxps);
	FUNC6(clnt, old, old_timeo);
	clnt->cl_parent = parent;
	FUNC4(clnt, pseudoflavor, NULL);
	FUNC14(xps);
	FUNC12(xprt);
	FUNC3("RPC:       failed to switch xprt for clnt %p\n", clnt);
	return err;
}