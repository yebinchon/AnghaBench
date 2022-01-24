#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rpc_clnt {int dummy; } ;
struct rpc_auth_create_args {scalar_t__ target_name; int /*<<< orphan*/  pseudoflavor; } ;
struct rpc_auth {int au_cslack; int au_rslack; int au_verfsize; int au_ralign; int /*<<< orphan*/  au_count; int /*<<< orphan*/  au_flags; int /*<<< orphan*/  au_flavor; int /*<<< orphan*/ * au_ops; } ;
struct gss_pipe {int dummy; } ;
struct gss_auth {scalar_t__ service; struct gss_auth* target_name; int /*<<< orphan*/  net; TYPE_1__* mech; struct gss_pipe** gss_pipe; int /*<<< orphan*/  kref; struct rpc_auth rpc_auth; struct rpc_clnt* client; int /*<<< orphan*/  hash; } ;
typedef  int /*<<< orphan*/  rpc_authflavor_t ;
struct TYPE_5__ {char* gm_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct gss_auth* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int GSS_CRED_SLACK ; 
 int GSS_VERF_SLACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct gss_pipe*) ; 
 int FUNC3 (struct gss_pipe*) ; 
 int /*<<< orphan*/  RPCAUTH_AUTH_DATATOUCH ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  authgss_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct gss_pipe*) ; 
 struct gss_pipe* FUNC8 (struct rpc_clnt*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gss_upcall_ops_v0 ; 
 int /*<<< orphan*/  gss_upcall_ops_v1 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct gss_auth*) ; 
 struct gss_auth* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct gss_auth* FUNC15 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC20 (struct rpc_auth*) ; 
 int FUNC21 (struct rpc_auth*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct gss_auth *
FUNC24(const struct rpc_auth_create_args *args, struct rpc_clnt *clnt)
{
	rpc_authflavor_t flavor = args->pseudoflavor;
	struct gss_auth *gss_auth;
	struct gss_pipe *gss_pipe;
	struct rpc_auth * auth;
	int err = -ENOMEM; /* XXX? */

	if (!FUNC23(THIS_MODULE))
		return FUNC0(err);
	if (!(gss_auth = FUNC13(sizeof(*gss_auth), GFP_KERNEL)))
		goto out_dec;
	FUNC1(&gss_auth->hash);
	gss_auth->target_name = NULL;
	if (args->target_name) {
		gss_auth->target_name = FUNC15(args->target_name, GFP_KERNEL);
		if (gss_auth->target_name == NULL)
			goto err_free;
	}
	gss_auth->client = clnt;
	gss_auth->net = FUNC4(FUNC19(clnt));
	err = -EINVAL;
	gss_auth->mech = FUNC5(flavor);
	if (!gss_auth->mech)
		goto err_put_net;
	gss_auth->service = FUNC10(gss_auth->mech, flavor);
	if (gss_auth->service == 0)
		goto err_put_mech;
	if (!FUNC11(gss_auth->net))
		goto err_put_mech;
	auth = &gss_auth->rpc_auth;
	auth->au_cslack = GSS_CRED_SLACK >> 2;
	auth->au_rslack = GSS_VERF_SLACK >> 2;
	auth->au_verfsize = GSS_VERF_SLACK >> 2;
	auth->au_ralign = GSS_VERF_SLACK >> 2;
	auth->au_flags = 0;
	auth->au_ops = &authgss_ops;
	auth->au_flavor = flavor;
	if (FUNC9(gss_auth->mech, flavor))
		auth->au_flags |= RPCAUTH_AUTH_DATATOUCH;
	FUNC18(&auth->au_count, 1);
	FUNC14(&gss_auth->kref);

	err = FUNC21(auth);
	if (err)
		goto err_put_mech;
	/*
	 * Note: if we created the old pipe first, then someone who
	 * examined the directory at the right moment might conclude
	 * that we supported only the old pipe.  So we instead create
	 * the new pipe first.
	 */
	gss_pipe = FUNC8(clnt, "gssd", &gss_upcall_ops_v1);
	if (FUNC2(gss_pipe)) {
		err = FUNC3(gss_pipe);
		goto err_destroy_credcache;
	}
	gss_auth->gss_pipe[1] = gss_pipe;

	gss_pipe = FUNC8(clnt, gss_auth->mech->gm_name,
			&gss_upcall_ops_v0);
	if (FUNC2(gss_pipe)) {
		err = FUNC3(gss_pipe);
		goto err_destroy_pipe_1;
	}
	gss_auth->gss_pipe[0] = gss_pipe;

	return gss_auth;
err_destroy_pipe_1:
	FUNC7(gss_auth->gss_pipe[1]);
err_destroy_credcache:
	FUNC20(auth);
err_put_mech:
	FUNC6(gss_auth->mech);
err_put_net:
	FUNC17(gss_auth->net);
err_free:
	FUNC12(gss_auth->target_name);
	FUNC12(gss_auth);
out_dec:
	FUNC16(THIS_MODULE);
	FUNC22(flavor, err);
	return FUNC0(err);
}