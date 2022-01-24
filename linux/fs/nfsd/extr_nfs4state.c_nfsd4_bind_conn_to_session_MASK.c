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
struct nfsd4_bind_conn_to_session {int /*<<< orphan*/  dir; int /*<<< orphan*/  sessionid; } ;
union nfsd4_op_u {struct nfsd4_bind_conn_to_session bind_conn_to_session; } ;
struct svc_rqst {int dummy; } ;
struct nfsd_net {int /*<<< orphan*/  client_lock; } ;
struct nfsd4_session {int /*<<< orphan*/  se_client; } ;
struct nfsd4_conn {int dummy; } ;
struct nfsd4_compound_state {int dummy; } ;
struct net {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 struct net* FUNC0 (struct svc_rqst*) ; 
 struct nfsd4_conn* FUNC1 (struct svc_rqst*,int /*<<< orphan*/ ) ; 
 struct nfsd4_session* FUNC2 (int /*<<< orphan*/ *,struct net*,scalar_t__*) ; 
 struct nfsd_net* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 
 scalar_t__ nfs_ok ; 
 int /*<<< orphan*/  FUNC4 (struct svc_rqst*,struct nfsd4_conn*,struct nfsd4_session*) ; 
 int /*<<< orphan*/  FUNC5 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct svc_rqst*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct nfsd4_session*) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 scalar_t__ nfserr_jukebox ; 
 scalar_t__ nfserr_not_only_op ; 
 scalar_t__ nfserr_wrong_cred ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__be32 FUNC11(struct svc_rqst *rqstp,
		     struct nfsd4_compound_state *cstate,
		     union nfsd4_op_u *u)
{
	struct nfsd4_bind_conn_to_session *bcts = &u->bind_conn_to_session;
	__be32 status;
	struct nfsd4_conn *conn;
	struct nfsd4_session *session;
	struct net *net = FUNC0(rqstp);
	struct nfsd_net *nn = FUNC3(net, nfsd_net_id);

	if (!FUNC5(rqstp))
		return nfserr_not_only_op;
	FUNC9(&nn->client_lock);
	session = FUNC2(&bcts->sessionid, net, &status);
	FUNC10(&nn->client_lock);
	if (!session)
		goto out_no_session;
	status = nfserr_wrong_cred;
	if (!FUNC6(session->se_client, rqstp))
		goto out;
	status = FUNC7(&bcts->dir);
	if (status)
		goto out;
	conn = FUNC1(rqstp, bcts->dir);
	status = nfserr_jukebox;
	if (!conn)
		goto out;
	FUNC4(rqstp, conn, session);
	status = nfs_ok;
out:
	FUNC8(session);
out_no_session:
	return status;
}