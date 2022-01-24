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
struct nfs4_client {int /*<<< orphan*/  cl_cb_null; int /*<<< orphan*/  cl_flags; int /*<<< orphan*/  cl_cb_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD4_CB_UNKNOWN ; 
 int /*<<< orphan*/  NFSD4_CLIENT_CB_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct nfs4_client *clp)
{
	clp->cl_cb_state = NFSD4_CB_UNKNOWN;
	FUNC1(NFSD4_CLIENT_CB_UPDATE, &clp->cl_flags);
	FUNC0(&clp->cl_cb_null);
}