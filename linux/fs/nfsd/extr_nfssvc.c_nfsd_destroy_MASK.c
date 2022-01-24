#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfsd_net {TYPE_1__* nfsd_serv; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int sv_nrthreads; } ;

/* Variables and functions */
 struct nfsd_net* FUNC0 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct net*) ; 

void FUNC3(struct net *net)
{
	struct nfsd_net *nn = FUNC0(net, nfsd_net_id);
	int destroy = (nn->nfsd_serv->sv_nrthreads == 1);

	if (destroy)
		FUNC2(nn->nfsd_serv, net);
	FUNC1(nn->nfsd_serv);
	if (destroy)
		nn->nfsd_serv = NULL;
}