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
struct seq_file {struct rpc_xprt* private; } ;
struct rpc_xprt {int /*<<< orphan*/  state; int /*<<< orphan*/ * address_strings; } ;

/* Variables and functions */
 size_t RPC_DISPLAY_ADDR ; 
 size_t RPC_DISPLAY_NETID ; 
 size_t RPC_DISPLAY_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct seq_file *f, void *v)
{
	struct rpc_xprt *xprt = f->private;

	FUNC0(f, "netid: %s\n", xprt->address_strings[RPC_DISPLAY_NETID]);
	FUNC0(f, "addr:  %s\n", xprt->address_strings[RPC_DISPLAY_ADDR]);
	FUNC0(f, "port:  %s\n", xprt->address_strings[RPC_DISPLAY_PORT]);
	FUNC0(f, "state: 0x%lx\n", xprt->state);
	return 0;
}