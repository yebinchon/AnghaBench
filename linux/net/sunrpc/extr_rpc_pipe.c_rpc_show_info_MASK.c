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
struct seq_file {struct rpc_clnt* private; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_vers; int /*<<< orphan*/  cl_prog; TYPE_1__* cl_program; int /*<<< orphan*/  cl_xprt; } ;
struct TYPE_4__ {int /*<<< orphan*/  servername; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_DISPLAY_ADDR ; 
 int /*<<< orphan*/  RPC_DISPLAY_PORT ; 
 int /*<<< orphan*/  RPC_DISPLAY_PROTO ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_clnt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC5(struct seq_file *m, void *v)
{
	struct rpc_clnt *clnt = m->private;

	FUNC1();
	FUNC4(m, "RPC server: %s\n",
			FUNC0(clnt->cl_xprt)->servername);
	FUNC4(m, "service: %s (%d) version %d\n", clnt->cl_program->name,
			clnt->cl_prog, clnt->cl_vers);
	FUNC4(m, "address: %s\n", FUNC3(clnt, RPC_DISPLAY_ADDR));
	FUNC4(m, "protocol: %s\n", FUNC3(clnt, RPC_DISPLAY_PROTO));
	FUNC4(m, "port: %s\n", FUNC3(clnt, RPC_DISPLAY_PORT));
	FUNC2();
	return 0;
}