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
struct nfsd_net {int nfsd_net_up; TYPE_2__* nfsd_serv; } ;
struct net {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int sv_nrthreads; TYPE_1__* sv_ops; } ;
struct TYPE_3__ {int (* svo_setup ) (TYPE_2__*,int /*<<< orphan*/ *,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD_MAXSERVS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct nfsd_net* FUNC5 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net*) ; 
 int /*<<< orphan*/  FUNC7 (struct net*) ; 
 int /*<<< orphan*/  nfsd_mutex ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC8 (struct net*) ; 
 int FUNC9 (int,struct net*,struct cred const*) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 

int
FUNC11(int nrservs, struct net *net, const struct cred *cred)
{
	int	error;
	bool	nfsd_up_before;
	struct nfsd_net *nn = FUNC5(net, nfsd_net_id);

	FUNC3(&nfsd_mutex);
	FUNC0("nfsd: creating service\n");

	nrservs = FUNC1(nrservs, 0);
	nrservs = FUNC2(nrservs, NFSD_MAXSERVS);
	error = 0;

	if (nrservs == 0 && nn->nfsd_serv == NULL)
		goto out;

	error = FUNC6(net);
	if (error)
		goto out;

	nfsd_up_before = nn->nfsd_net_up;

	error = FUNC9(nrservs, net, cred);
	if (error)
		goto out_destroy;
	error = nn->nfsd_serv->sv_ops->svo_setup(nn->nfsd_serv,
			NULL, nrservs);
	if (error)
		goto out_shutdown;
	/* We are holding a reference to nn->nfsd_serv which
	 * we don't want to count in the return value,
	 * so subtract 1
	 */
	error = nn->nfsd_serv->sv_nrthreads - 1;
out_shutdown:
	if (error < 0 && !nfsd_up_before)
		FUNC8(net);
out_destroy:
	FUNC7(net);		/* Release server */
out:
	FUNC4(&nfsd_mutex);
	return error;
}