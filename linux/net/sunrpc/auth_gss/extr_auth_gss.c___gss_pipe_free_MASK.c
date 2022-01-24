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
struct rpc_clnt {int /*<<< orphan*/  cl_pipedir_objects; } ;
struct net {int dummy; } ;
struct gss_pipe {int /*<<< orphan*/  pipe; int /*<<< orphan*/  pdo; struct rpc_clnt* clnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gss_pipe*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct net* FUNC2 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gss_pipe *p)
{
	struct rpc_clnt *clnt = p->clnt;
	struct net *net = FUNC2(clnt);

	FUNC3(net,
			&clnt->cl_pipedir_objects,
			&p->pdo);
	FUNC1(p->pipe);
	FUNC0(p);
}