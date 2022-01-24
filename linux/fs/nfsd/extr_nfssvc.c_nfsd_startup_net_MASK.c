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
struct nfsd_net {int nfsd_net_up; int lockd_up; } ;
struct net {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*) ; 
 int FUNC1 (struct net*,struct cred const*) ; 
 struct nfsd_net* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct net*) ; 
 int FUNC4 (struct net*,struct cred const*) ; 
 scalar_t__ FUNC5 (struct nfsd_net*) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(int nrservs, struct net *net, const struct cred *cred)
{
	struct nfsd_net *nn = FUNC2(net, nfsd_net_id);
	int ret;

	if (nn->nfsd_net_up)
		return 0;

	ret = FUNC7(nrservs);
	if (ret)
		return ret;
	ret = FUNC4(net, cred);
	if (ret)
		goto out_socks;

	if (FUNC5(nn) && !nn->lockd_up) {
		ret = FUNC1(net, cred);
		if (ret)
			goto out_socks;
		nn->lockd_up = 1;
	}

	ret = FUNC3(net);
	if (ret)
		goto out_lockd;

	nn->nfsd_net_up = true;
	return 0;

out_lockd:
	if (nn->lockd_up) {
		FUNC0(net);
		nn->lockd_up = 0;
	}
out_socks:
	FUNC6();
	return ret;
}