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
struct nfs4_client {int /*<<< orphan*/  cl_cb_null; int /*<<< orphan*/  cl_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD4_CLIENT_CB_KILL ; 
 int /*<<< orphan*/  callback_wq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct nfs4_client *clp)
{
	FUNC2(NFSD4_CLIENT_CB_KILL, &clp->cl_flags);
	/*
	 * Note this won't actually result in a null callback;
	 * instead, nfsd4_run_cb_null() will detect the killed
	 * client, destroy the rpc client, and stop:
	 */
	FUNC1(&clp->cl_cb_null);
	FUNC0(callback_wq);
}