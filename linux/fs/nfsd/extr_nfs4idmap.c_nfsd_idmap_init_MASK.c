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
struct nfsd_net {void* idtoname_cache; void* nametoid_cache; } ;
struct net {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,struct net*) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct net*) ; 
 int FUNC4 (void*,struct net*) ; 
 int /*<<< orphan*/  FUNC5 (void*,struct net*) ; 
 int /*<<< orphan*/  idtoname_cache_template ; 
 int /*<<< orphan*/  nametoid_cache_template ; 
 struct nfsd_net* FUNC6 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 

int
FUNC7(struct net *net)
{
	int rv;
	struct nfsd_net *nn = FUNC6(net, nfsd_net_id);

	nn->idtoname_cache = FUNC2(&idtoname_cache_template, net);
	if (FUNC0(nn->idtoname_cache))
		return FUNC1(nn->idtoname_cache);
	rv = FUNC4(nn->idtoname_cache, net);
	if (rv)
		goto destroy_idtoname_cache;
	nn->nametoid_cache = FUNC2(&nametoid_cache_template, net);
	if (FUNC0(nn->nametoid_cache)) {
		rv = FUNC1(nn->nametoid_cache);
		goto unregister_idtoname_cache;
	}
	rv = FUNC4(nn->nametoid_cache, net);
	if (rv)
		goto destroy_nametoid_cache;
	return 0;

destroy_nametoid_cache:
	FUNC3(nn->nametoid_cache, net);
unregister_idtoname_cache:
	FUNC5(nn->idtoname_cache, net);
destroy_idtoname_cache:
	FUNC3(nn->idtoname_cache, net);
	return rv;
}