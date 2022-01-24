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
struct nfsd_net {void* svc_export_cache; void* svc_expkey_cache; } ;
struct TYPE_2__ {int /*<<< orphan*/  inum; } ;
struct net {TYPE_1__ ns; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,struct net*) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct net*) ; 
 int FUNC4 (void*,struct net*) ; 
 int /*<<< orphan*/  FUNC5 (void*,struct net*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 struct nfsd_net* FUNC7 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  svc_expkey_cache_template ; 
 int /*<<< orphan*/  svc_export_cache_template ; 

int
FUNC8(struct net *net)
{
	int rv;
	struct nfsd_net *nn = FUNC7(net, nfsd_net_id);

	FUNC6("nfsd: initializing export module (net: %x).\n", net->ns.inum);

	nn->svc_export_cache = FUNC2(&svc_export_cache_template, net);
	if (FUNC0(nn->svc_export_cache))
		return FUNC1(nn->svc_export_cache);
	rv = FUNC4(nn->svc_export_cache, net);
	if (rv)
		goto destroy_export_cache;

	nn->svc_expkey_cache = FUNC2(&svc_expkey_cache_template, net);
	if (FUNC0(nn->svc_expkey_cache)) {
		rv = FUNC1(nn->svc_expkey_cache);
		goto unregister_export_cache;
	}
	rv = FUNC4(nn->svc_expkey_cache, net);
	if (rv)
		goto destroy_expkey_cache;
	return 0;

destroy_expkey_cache:
	FUNC3(nn->svc_expkey_cache, net);
unregister_export_cache:
	FUNC5(nn->svc_export_cache, net);
destroy_export_cache:
	FUNC3(nn->svc_export_cache, net);
	return rv;
}