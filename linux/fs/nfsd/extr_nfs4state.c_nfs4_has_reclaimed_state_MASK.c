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
struct xdr_netobj {int dummy; } ;
struct nfsd_net {int dummy; } ;
struct nfs4_client_reclaim {scalar_t__ cr_clp; } ;

/* Variables and functions */
 struct nfs4_client_reclaim* FUNC0 (struct xdr_netobj,struct nfsd_net*) ; 

bool
FUNC1(struct xdr_netobj name, struct nfsd_net *nn)
{
	struct nfs4_client_reclaim *crp;

	crp = FUNC0(name, nn);
	return (crp && crp->cr_clp);
}