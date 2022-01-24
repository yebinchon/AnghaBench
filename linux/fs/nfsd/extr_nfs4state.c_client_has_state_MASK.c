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
struct nfs4_client {int /*<<< orphan*/  async_copies; int /*<<< orphan*/  cl_sessions; int /*<<< orphan*/  cl_delegations; int /*<<< orphan*/  cl_lo_states; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct nfs4_client *clp)
{
	return FUNC0(clp)
#ifdef CONFIG_NFSD_PNFS
		|| !list_empty(&clp->cl_lo_states)
#endif
		|| !FUNC1(&clp->cl_delegations)
		|| !FUNC1(&clp->cl_sessions)
		|| !FUNC1(&clp->async_copies);
}