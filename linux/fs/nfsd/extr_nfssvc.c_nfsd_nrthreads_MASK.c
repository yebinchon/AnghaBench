#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfsd_net {TYPE_1__* nfsd_serv; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int sv_nrthreads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nfsd_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_mutex ; 
 int /*<<< orphan*/  nfsd_net_id ; 

int FUNC3(struct net *net)
{
	int rv = 0;
	struct nfsd_net *nn = FUNC2(net, nfsd_net_id);

	FUNC0(&nfsd_mutex);
	if (nn->nfsd_serv)
		rv = nn->nfsd_serv->sv_nrthreads;
	FUNC1(&nfsd_mutex);
	return rv;
}