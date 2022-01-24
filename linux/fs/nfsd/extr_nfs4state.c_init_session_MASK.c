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
struct svc_rqst {int dummy; } ;
struct sockaddr {int dummy; } ;
struct nfsd_net {int /*<<< orphan*/ * sessionid_hashtbl; } ;
struct nfsd4_session {int se_cb_seq_nr; int /*<<< orphan*/  se_perclnt; int /*<<< orphan*/  se_hash; int /*<<< orphan*/  se_sessionid; int /*<<< orphan*/  se_ref; int /*<<< orphan*/  se_cb_sec; int /*<<< orphan*/  se_cb_prog; int /*<<< orphan*/  se_flags; int /*<<< orphan*/  se_conns; struct nfs4_client* se_client; } ;
struct nfsd4_create_session {int /*<<< orphan*/  cb_sec; int /*<<< orphan*/  callback_prog; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_addrlen; int /*<<< orphan*/  cb_addr; } ;
struct nfs4_client {TYPE_1__ cl_cb_conn; int /*<<< orphan*/  cl_lock; int /*<<< orphan*/  cl_sessions; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsd4_session*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct nfsd_net* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct sockaddr* FUNC10 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC11 (struct sockaddr*) ; 

__attribute__((used)) static void FUNC12(struct svc_rqst *rqstp, struct nfsd4_session *new, struct nfs4_client *clp, struct nfsd4_create_session *cses)
{
	int idx;
	struct nfsd_net *nn = FUNC6(FUNC1(rqstp), nfsd_net_id);

	new->se_client = clp;
	FUNC3(new);

	FUNC0(&new->se_conns);

	new->se_cb_seq_nr = 1;
	new->se_flags = cses->flags;
	new->se_cb_prog = cses->callback_prog;
	new->se_cb_sec = cses->cb_sec;
	FUNC2(&new->se_ref, 0);
	idx = FUNC4(&new->se_sessionid);
	FUNC5(&new->se_hash, &nn->sessionid_hashtbl[idx]);
	FUNC8(&clp->cl_lock);
	FUNC5(&new->se_perclnt, &clp->cl_sessions);
	FUNC9(&clp->cl_lock);

	{
		struct sockaddr *sa = FUNC10(rqstp);
		/*
		 * This is a little silly; with sessions there's no real
		 * use for the callback address.  Use the peer address
		 * as a reasonable default for now, but consider fixing
		 * the rpc client not to require an address in the
		 * future:
		 */
		FUNC7((struct sockaddr *)&clp->cl_cb_conn.cb_addr, sa);
		clp->cl_cb_conn.cb_addrlen = FUNC11(sa);
	}
}