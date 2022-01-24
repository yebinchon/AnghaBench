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
struct nfsd_net {int /*<<< orphan*/  nametoid_cache; int /*<<< orphan*/  idtoname_cache; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net*) ; 
 struct nfsd_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 

void
FUNC3(struct net *net)
{
	struct nfsd_net *nn = FUNC2(net, nfsd_net_id);

	FUNC1(nn->idtoname_cache, net);
	FUNC1(nn->nametoid_cache, net);
	FUNC0(nn->idtoname_cache, net);
	FUNC0(nn->nametoid_cache, net);
}