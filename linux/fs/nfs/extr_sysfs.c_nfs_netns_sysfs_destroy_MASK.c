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

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct nfs_net *netns)
{
	struct nfs_netns_client *clp = netns->nfs_client;

	if (clp) {
		FUNC2(&clp->kobject, KOBJ_REMOVE);
		FUNC0(&clp->kobject);
		FUNC1(&clp->kobject);
		netns->nfs_client = NULL;
	}
}