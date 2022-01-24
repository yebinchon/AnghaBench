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
struct nfs_net {int /*<<< orphan*/  nfs_dns_resolve; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct net*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net*) ; 
 struct nfs_net* FUNC4 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_dns_resolve_template ; 
 int /*<<< orphan*/  nfs_net_id ; 

int FUNC6(struct net *net)
{
	int err;
	struct nfs_net *nn = FUNC4(net, nfs_net_id);

	nn->nfs_dns_resolve = FUNC2(&nfs_dns_resolve_template, net);
	if (FUNC0(nn->nfs_dns_resolve))
		return FUNC1(nn->nfs_dns_resolve);

	err = FUNC5(net, nn->nfs_dns_resolve);
	if (err)
		goto err_reg;
	return 0;

err_reg:
	FUNC3(nn->nfs_dns_resolve, net);
	return err;
}