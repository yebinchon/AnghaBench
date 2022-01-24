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
struct nfsd_net {int /*<<< orphan*/  svc_export_cache; int /*<<< orphan*/  svc_expkey_cache; } ;
struct TYPE_2__ {int /*<<< orphan*/  inum; } ;
struct net {TYPE_1__ ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct nfsd_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC4 (struct net*) ; 

void
FUNC5(struct net *net)
{
	struct nfsd_net *nn = FUNC3(net, nfsd_net_id);

	FUNC2("nfsd: shutting down export module (net: %x).\n", net->ns.inum);

	FUNC1(nn->svc_expkey_cache, net);
	FUNC1(nn->svc_export_cache, net);
	FUNC0(nn->svc_expkey_cache, net);
	FUNC0(nn->svc_export_cache, net);
	FUNC4(net);

	FUNC2("nfsd: export shutdown complete (net: %x).\n", net->ns.inum);
}