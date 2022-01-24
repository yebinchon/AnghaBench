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
struct nfs4_lockowner {int dummy; } ;
struct nfs4_client {int /*<<< orphan*/  cl_lock; } ;

/* Variables and functions */
 struct nfs4_lockowner* FUNC0 (struct nfs4_client*,struct xdr_netobj*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_lockowner *
FUNC3(struct nfs4_client *clp, struct xdr_netobj *owner)
{
	struct nfs4_lockowner *lo;

	FUNC1(&clp->cl_lock);
	lo = FUNC0(clp, owner);
	FUNC2(&clp->cl_lock);
	return lo;
}