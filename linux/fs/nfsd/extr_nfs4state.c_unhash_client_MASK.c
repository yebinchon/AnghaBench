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
struct nfsd_net {int /*<<< orphan*/  client_lock; } ;
struct nfs4_client {int /*<<< orphan*/  net; } ;

/* Variables and functions */
 struct nfsd_net* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_client*) ; 

__attribute__((used)) static void
FUNC4(struct nfs4_client *clp)
{
	struct nfsd_net *nn = FUNC0(clp->net, nfsd_net_id);

	FUNC1(&nn->client_lock);
	FUNC3(clp);
	FUNC2(&nn->client_lock);
}