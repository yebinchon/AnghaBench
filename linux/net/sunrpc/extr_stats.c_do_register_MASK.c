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
struct sunrpc_net {int /*<<< orphan*/  proc_net_rpc; } ;
struct proc_dir_entry {int dummy; } ;
struct net {int dummy; } ;
struct file_operations {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 struct sunrpc_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 struct proc_dir_entry* FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file_operations const*,void*) ; 
 int /*<<< orphan*/  sunrpc_net_id ; 

__attribute__((used)) static inline struct proc_dir_entry *
FUNC3(struct net *net, const char *name, void *data,
	    const struct file_operations *fops)
{
	struct sunrpc_net *sn;

	FUNC0("RPC:       registering /proc/net/rpc/%s\n", name);
	sn = FUNC1(net, sunrpc_net_id);
	return FUNC2(name, 0, sn->proc_net_rpc, fops, data);
}