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
struct nfs4_client {int /*<<< orphan*/  cl_cb_state; int /*<<< orphan*/  cl_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD4_CB_FAULT ; 
 int /*<<< orphan*/  NFSD4_CLIENT_CB_UPDATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_client*,int) ; 

__attribute__((used)) static void FUNC2(struct nfs4_client *clp, int reason)
{
	if (FUNC0(NFSD4_CLIENT_CB_UPDATE, &clp->cl_flags))
		return;
	clp->cl_cb_state = NFSD4_CB_FAULT;
	FUNC1(clp, reason);
}