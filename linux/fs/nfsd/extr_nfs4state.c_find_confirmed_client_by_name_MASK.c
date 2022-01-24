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
struct nfsd_net {int /*<<< orphan*/  conf_name_tree; int /*<<< orphan*/  client_lock; } ;
struct nfs4_client {int dummy; } ;

/* Variables and functions */
 struct nfs4_client* FUNC0 (struct xdr_netobj*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_client *
FUNC2(struct xdr_netobj *name, struct nfsd_net *nn)
{
	FUNC1(&nn->client_lock);
	return FUNC0(name, &nn->conf_name_tree);
}