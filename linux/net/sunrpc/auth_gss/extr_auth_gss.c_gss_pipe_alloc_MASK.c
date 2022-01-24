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
struct rpc_pipe_ops {int dummy; } ;
struct rpc_clnt {int dummy; } ;
struct gss_pipe {char const* name; int /*<<< orphan*/  pdo; int /*<<< orphan*/  kref; struct rpc_clnt* clnt; int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct gss_pipe* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPC_PIPE_WAIT_FOR_OPEN ; 
 int /*<<< orphan*/  gss_pipe_dir_object_ops ; 
 int /*<<< orphan*/  FUNC3 (struct gss_pipe*) ; 
 struct gss_pipe* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct gss_pipe*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_pipe_ops const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct gss_pipe *FUNC8(struct rpc_clnt *clnt,
		const char *name,
		const struct rpc_pipe_ops *upcall_ops)
{
	struct gss_pipe *p;
	int err = -ENOMEM;

	p = FUNC4(sizeof(*p), GFP_KERNEL);
	if (p == NULL)
		goto err;
	p->pipe = FUNC7(upcall_ops, RPC_PIPE_WAIT_FOR_OPEN);
	if (FUNC1(p->pipe)) {
		err = FUNC2(p->pipe);
		goto err_free_gss_pipe;
	}
	p->name = name;
	p->clnt = clnt;
	FUNC5(&p->kref);
	FUNC6(&p->pdo,
			&gss_pipe_dir_object_ops,
			p);
	return p;
err_free_gss_pipe:
	FUNC3(p);
err:
	return FUNC0(err);
}