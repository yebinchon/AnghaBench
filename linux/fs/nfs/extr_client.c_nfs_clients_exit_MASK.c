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
struct nfs_net {int /*<<< orphan*/  nfs_volume_list; int /*<<< orphan*/  nfs_client_list; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nfs_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 
 int /*<<< orphan*/  nfs_net_id ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_net*) ; 

void FUNC5(struct net *net)
{
	struct nfs_net *nn = FUNC2(net, nfs_net_id);

	FUNC4(nn);
	FUNC3(net);
	FUNC0(!FUNC1(&nn->nfs_client_list));
	FUNC0(!FUNC1(&nn->nfs_volume_list));
}