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
struct nfsd_net {int nfsd_net_up; scalar_t__ lockd_up; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net*) ; 
 struct nfsd_net* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 int /*<<< orphan*/  FUNC3 (struct net*) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct net *net)
{
	struct nfsd_net *nn = FUNC1(net, nfsd_net_id);

	FUNC3(net);
	FUNC2(net);
	if (nn->lockd_up) {
		FUNC0(net);
		nn->lockd_up = 0;
	}
	nn->nfsd_net_up = false;
	FUNC4();
}