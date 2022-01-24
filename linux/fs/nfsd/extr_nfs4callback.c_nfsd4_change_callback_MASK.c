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
struct nfs4_client {int /*<<< orphan*/  cl_lock; int /*<<< orphan*/  cl_cb_conn; int /*<<< orphan*/  cl_cb_state; } ;
struct nfs4_cb_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFSD4_CB_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct nfs4_cb_conn*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct nfs4_client *clp, struct nfs4_cb_conn *conn)
{
	clp->cl_cb_state = NFSD4_CB_UNKNOWN;
	FUNC1(&clp->cl_lock);
	FUNC0(&clp->cl_cb_conn, conn, sizeof(struct nfs4_cb_conn));
	FUNC2(&clp->cl_lock);
}