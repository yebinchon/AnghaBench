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
struct nfsd4_session {int dummy; } ;
struct nfsd4_conn {struct nfsd4_session* cn_session; int /*<<< orphan*/  cn_xprt; } ;
struct nfsd4_callback {struct nfs4_client* cb_clp; } ;
struct TYPE_2__ {int /*<<< orphan*/ * cb_xprt; } ;
struct nfs4_client {int cl_flags; int /*<<< orphan*/  cl_lock; TYPE_1__ cl_cb_conn; int /*<<< orphan*/ * cl_cb_cred; int /*<<< orphan*/ * cl_cb_client; } ;
struct nfs4_cb_conn {int /*<<< orphan*/  cb_xprt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NFSD4_CLIENT_CB_FLAG_MASK ; 
 int /*<<< orphan*/  NFSD4_CLIENT_CB_KILL ; 
 int /*<<< orphan*/  NFSD4_CLIENT_CB_UPDATE ; 
 struct nfsd4_conn* FUNC1 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs4_cb_conn*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs4_client*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct nfs4_client*,struct nfs4_cb_conn*,struct nfsd4_session*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC13(struct nfsd4_callback *cb)
{
	struct nfs4_cb_conn conn;
	struct nfs4_client *clp = cb->cb_clp;
	struct nfsd4_session *ses = NULL;
	struct nfsd4_conn *c;
	int err;

	/*
	 * This is either an update, or the client dying; in either case,
	 * kill the old client:
	 */
	if (clp->cl_cb_client) {
		FUNC6(clp->cl_cb_client);
		clp->cl_cb_client = NULL;
		FUNC5(clp->cl_cb_cred);
		clp->cl_cb_cred = NULL;
	}
	if (clp->cl_cb_conn.cb_xprt) {
		FUNC11(clp->cl_cb_conn.cb_xprt);
		clp->cl_cb_conn.cb_xprt = NULL;
	}
	if (FUNC12(NFSD4_CLIENT_CB_KILL, &clp->cl_flags))
		return;
	FUNC8(&clp->cl_lock);
	/*
	 * Only serialized callback code is allowed to clear these
	 * flags; main nfsd code can only set them:
	 */
	FUNC0(!(clp->cl_flags & NFSD4_CLIENT_CB_FLAG_MASK));
	FUNC2(NFSD4_CLIENT_CB_UPDATE, &clp->cl_flags);
	FUNC3(&conn, &cb->cb_clp->cl_cb_conn, sizeof(struct nfs4_cb_conn));
	c = FUNC1(clp);
	if (c) {
		FUNC10(c->cn_xprt);
		conn.cb_xprt = c->cn_xprt;
		ses = c->cn_session;
	}
	FUNC9(&clp->cl_lock);

	err = FUNC7(clp, &conn, ses);
	if (err) {
		FUNC4(clp, err);
		return;
	}
}