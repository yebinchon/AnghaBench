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
struct rpc_xprt_switch {int dummy; } ;
struct rpc_xprt {struct rpc_timeout* timeout; } ;
struct rpc_version {int /*<<< orphan*/  number; int /*<<< orphan*/  nrprocs; int /*<<< orphan*/  procs; } ;
struct rpc_timeout {int dummy; } ;
struct rpc_program {size_t nrvers; int /*<<< orphan*/  stats; int /*<<< orphan*/  number; struct rpc_version** version; int /*<<< orphan*/  name; } ;
struct rpc_create_args {char* nodename; size_t version; int /*<<< orphan*/  client_name; int /*<<< orphan*/  authflavor; int /*<<< orphan*/ * timeout; scalar_t__ prognumber; int /*<<< orphan*/  cred; int /*<<< orphan*/  servername; struct rpc_program* program; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_cred; int /*<<< orphan*/ * cl_metrics; int /*<<< orphan*/  cl_count; TYPE_1__* cl_timeout; int /*<<< orphan*/  cl_rtt_default; int /*<<< orphan*/ * cl_rtt; int /*<<< orphan*/  cl_xpi; struct rpc_timeout cl_timeout_default; int /*<<< orphan*/  cl_lock; int /*<<< orphan*/  cl_tasks; struct rpc_program const* cl_program; int /*<<< orphan*/  cl_pipedir_objects; int /*<<< orphan*/  cl_stats; int /*<<< orphan*/  cl_vers; int /*<<< orphan*/  cl_prog; int /*<<< orphan*/  cl_maxproc; int /*<<< orphan*/  cl_procinfo; struct rpc_clnt* cl_parent; } ;
struct TYPE_4__ {char* nodename; } ;
struct TYPE_3__ {int /*<<< orphan*/  to_initval; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct rpc_clnt* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_clnt*) ; 
 struct rpc_clnt* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_timeout*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct rpc_clnt*) ; 
 int /*<<< orphan*/ * FUNC11 (struct rpc_clnt*) ; 
 int FUNC12 (struct rpc_clnt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rpc_clnt*,char const*) ; 
 int /*<<< orphan*/  FUNC14 (struct rpc_clnt*,struct rpc_xprt*,struct rpc_timeout const*) ; 
 int /*<<< orphan*/  FUNC15 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,struct rpc_xprt_switch*) ; 
 int /*<<< orphan*/  FUNC24 (struct rpc_xprt*) ; 
 int /*<<< orphan*/  FUNC25 (struct rpc_xprt_switch*) ; 

__attribute__((used)) static struct rpc_clnt * FUNC26(const struct rpc_create_args *args,
		struct rpc_xprt_switch *xps,
		struct rpc_xprt *xprt,
		struct rpc_clnt *parent)
{
	const struct rpc_program *program = args->program;
	const struct rpc_version *version;
	struct rpc_clnt *clnt = NULL;
	const struct rpc_timeout *timeout;
	const char *nodename = args->nodename;
	int err;

	/* sanity check the name before trying to print it */
	FUNC4("RPC:       creating %s client for %s (xprt %p)\n",
			program->name, args->servername, xprt);

	err = FUNC20();
	if (err)
		goto out_no_rpciod;

	err = -EINVAL;
	if (args->version >= program->nrvers)
		goto out_err;
	version = program->version[args->version];
	if (version == NULL)
		goto out_err;

	err = -ENOMEM;
	clnt = FUNC7(sizeof(*clnt), GFP_KERNEL);
	if (!clnt)
		goto out_err;
	clnt->cl_parent = parent ? : clnt;

	err = FUNC10(clnt);
	if (err)
		goto out_no_clid;

	clnt->cl_cred	  = FUNC5(args->cred);
	clnt->cl_procinfo = version->procs;
	clnt->cl_maxproc  = version->nrprocs;
	clnt->cl_prog     = args->prognumber ? : program->number;
	clnt->cl_vers     = version->number;
	clnt->cl_stats    = program->stats;
	clnt->cl_metrics  = FUNC11(clnt);
	FUNC17(&clnt->cl_pipedir_objects);
	err = -ENOMEM;
	if (clnt->cl_metrics == NULL)
		goto out_no_stats;
	clnt->cl_program  = program;
	FUNC1(&clnt->cl_tasks);
	FUNC21(&clnt->cl_lock);

	timeout = xprt->timeout;
	if (args->timeout != NULL) {
		FUNC8(&clnt->cl_timeout_default, args->timeout,
				sizeof(clnt->cl_timeout_default));
		timeout = &clnt->cl_timeout_default;
	}

	FUNC14(clnt, xprt, timeout);
	FUNC23(&clnt->cl_xpi, xps);
	FUNC25(xps);

	clnt->cl_rtt = &clnt->cl_rtt_default;
	FUNC18(&clnt->cl_rtt_default, clnt->cl_timeout->to_initval);

	FUNC3(&clnt->cl_count, 1);

	if (nodename == NULL)
		nodename = FUNC22()->nodename;
	/* save the nodename */
	FUNC13(clnt, nodename);

	err = FUNC12(clnt, args->authflavor, args->client_name);
	if (err)
		goto out_no_path;
	if (parent)
		FUNC2(&parent->cl_count);
	return clnt;

out_no_path:
	FUNC16(clnt->cl_metrics);
out_no_stats:
	FUNC9(clnt->cl_cred);
	FUNC15(clnt);
out_no_clid:
	FUNC6(clnt);
out_err:
	FUNC19();
out_no_rpciod:
	FUNC25(xps);
	FUNC24(xprt);
	return FUNC0(err);
}