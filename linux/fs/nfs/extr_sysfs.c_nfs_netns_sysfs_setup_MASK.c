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
struct nfs_netns_client {int /*<<< orphan*/  kobject; } ;
struct nfs_net {struct nfs_netns_client* nfs_client; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_client_kobj ; 
 struct nfs_netns_client* FUNC1 (int /*<<< orphan*/ ,struct net*) ; 

void FUNC2(struct nfs_net *netns, struct net *net)
{
	struct nfs_netns_client *clp;

	clp = FUNC1(nfs_client_kobj, net);
	if (clp) {
		netns->nfs_client = clp;
		FUNC0(&clp->kobject, KOBJ_ADD);
	}
}