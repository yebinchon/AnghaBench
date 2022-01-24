#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
struct nfsd4_create_session {int flags; int /*<<< orphan*/  fore_channel; scalar_t__ seqid; TYPE_1__ sessionid; int /*<<< orphan*/  clientid; int /*<<< orphan*/  back_channel; int /*<<< orphan*/  cb_sec; } ;
union nfsd4_op_u {struct nfsd4_create_session create_session; } ;
struct svc_rqst {int /*<<< orphan*/  rq_cred; } ;
struct sockaddr {int dummy; } ;
struct nfsd_net {int /*<<< orphan*/  client_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
struct nfsd4_session {TYPE_2__ se_sessionid; } ;
struct nfsd4_conn {int dummy; } ;
struct nfsd4_compound_state {int dummy; } ;
struct nfsd4_clid_slot {scalar_t__ sl_seqid; } ;
struct nfs4_client {int /*<<< orphan*/  cl_name; struct nfsd4_clid_slot cl_cs_slot; int /*<<< orphan*/  cl_addr; int /*<<< orphan*/  cl_cred; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  NFS4_MAX_SESSIONID_LEN ; 
 int SESSION4_FLAG_MASK_A ; 
 int SESSION4_PERSIST ; 
 int SESSION4_RDMA ; 
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsd4_session*) ; 
 struct nfsd4_conn* FUNC3 (struct svc_rqst*,struct nfsd4_create_session*) ; 
 struct nfsd4_session* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,struct nfsd_net*) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs4_client*) ; 
 struct nfs4_client* FUNC9 (int /*<<< orphan*/ *,int,struct nfsd_net*) ; 
 struct nfs4_client* FUNC10 (int /*<<< orphan*/ *,struct nfsd_net*) ; 
 struct nfs4_client* FUNC11 (int /*<<< orphan*/ *,int,struct nfsd_net*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfsd4_conn*) ; 
 int /*<<< orphan*/  FUNC13 (struct svc_rqst*,struct nfsd4_session*,struct nfs4_client*,struct nfsd4_create_session*) ; 
 scalar_t__ FUNC14 (struct nfs4_client*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct nfs4_client*) ; 
 struct nfsd_net* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ nfs_ok ; 
 int /*<<< orphan*/  FUNC18 (struct nfsd4_create_session*,struct nfsd4_clid_slot*,scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct nfsd4_session*) ; 
 int /*<<< orphan*/  FUNC21 (struct svc_rqst*,struct nfsd4_conn*,struct nfsd4_session*) ; 
 int /*<<< orphan*/  FUNC22 (struct nfs4_client*,struct svc_rqst*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct nfsd4_session*) ; 
 scalar_t__ FUNC25 (struct nfsd4_create_session*,struct nfsd4_clid_slot*) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 scalar_t__ nfserr_clid_inuse ; 
 scalar_t__ nfserr_inval ; 
 scalar_t__ nfserr_jukebox ; 
 scalar_t__ nfserr_replay_cache ; 
 scalar_t__ nfserr_seq_misordered ; 
 scalar_t__ nfserr_stale_clientid ; 
 scalar_t__ nfserr_wrong_cred ; 
 int /*<<< orphan*/  FUNC26 (struct sockaddr*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 struct sockaddr* FUNC30 (struct svc_rqst*) ; 

__be32
FUNC31(struct svc_rqst *rqstp,
		struct nfsd4_compound_state *cstate, union nfsd4_op_u *u)
{
	struct nfsd4_create_session *cr_ses = &u->create_session;
	struct sockaddr *sa = FUNC30(rqstp);
	struct nfs4_client *conf, *unconf;
	struct nfs4_client *old = NULL;
	struct nfsd4_session *new;
	struct nfsd4_conn *conn;
	struct nfsd4_clid_slot *cs_slot = NULL;
	__be32 status = 0;
	struct nfsd_net *nn = FUNC17(FUNC0(rqstp), nfsd_net_id);

	if (cr_ses->flags & ~SESSION4_FLAG_MASK_A)
		return nfserr_inval;
	status = FUNC19(&cr_ses->cb_sec);
	if (status)
		return status;
	status = FUNC6(&cr_ses->fore_channel, nn);
	if (status)
		return status;
	status = FUNC5(&cr_ses->back_channel);
	if (status)
		goto out_release_drc_mem;
	status = nfserr_jukebox;
	new = FUNC4(&cr_ses->fore_channel, &cr_ses->back_channel);
	if (!new)
		goto out_release_drc_mem;
	conn = FUNC3(rqstp, cr_ses);
	if (!conn)
		goto out_free_session;

	FUNC28(&nn->client_lock);
	unconf = FUNC11(&cr_ses->clientid, true, nn);
	conf = FUNC9(&cr_ses->clientid, true, nn);
	FUNC1(conf && unconf);

	if (conf) {
		status = nfserr_wrong_cred;
		if (!FUNC22(conf, rqstp))
			goto out_free_conn;
		cs_slot = &conf->cl_cs_slot;
		status = FUNC7(cr_ses->seqid, cs_slot->sl_seqid, 0);
		if (status) {
			if (status == nfserr_replay_cache)
				status = FUNC25(cr_ses, cs_slot);
			goto out_free_conn;
		}
	} else if (unconf) {
		if (!FUNC27(&unconf->cl_cred, &rqstp->rq_cred) ||
		    !FUNC26(sa, (struct sockaddr *) &unconf->cl_addr)) {
			status = nfserr_clid_inuse;
			goto out_free_conn;
		}
		status = nfserr_wrong_cred;
		if (!FUNC22(unconf, rqstp))
			goto out_free_conn;
		cs_slot = &unconf->cl_cs_slot;
		status = FUNC7(cr_ses->seqid, cs_slot->sl_seqid, 0);
		if (status) {
			/* an unconfirmed replay returns misordered */
			status = nfserr_seq_misordered;
			goto out_free_conn;
		}
		old = FUNC10(&unconf->cl_name, nn);
		if (old) {
			status = FUNC14(old);
			if (status) {
				old = NULL;
				goto out_free_conn;
			}
		}
		FUNC16(unconf);
		conf = unconf;
	} else {
		status = nfserr_stale_clientid;
		goto out_free_conn;
	}
	status = nfs_ok;
	/* Persistent sessions are not supported */
	cr_ses->flags &= ~SESSION4_PERSIST;
	/* Upshifting from TCP to RDMA is not supported */
	cr_ses->flags &= ~SESSION4_RDMA;

	FUNC13(rqstp, new, conf, cr_ses);
	FUNC20(new);

	FUNC15(cr_ses->sessionid.data, new->se_sessionid.data,
	       NFS4_MAX_SESSIONID_LEN);
	cs_slot->sl_seqid++;
	cr_ses->seqid = cs_slot->sl_seqid;

	/* cache solo and embedded create sessions under the client_lock */
	FUNC18(cr_ses, cs_slot, status);
	FUNC29(&nn->client_lock);
	/* init connection and backchannel */
	FUNC21(rqstp, conn, new);
	FUNC24(new);
	if (old)
		FUNC8(old);
	return status;
out_free_conn:
	FUNC29(&nn->client_lock);
	FUNC12(conn);
	if (old)
		FUNC8(old);
out_free_session:
	FUNC2(new);
out_release_drc_mem:
	FUNC23(&cr_ses->fore_channel);
	return status;
}