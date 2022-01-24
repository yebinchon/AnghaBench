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
struct nfsd4_backchannel_ctl {int /*<<< orphan*/  bc_cb_sec; int /*<<< orphan*/  bc_cb_program; } ;
union nfsd4_op_u {struct nfsd4_backchannel_ctl backchannel_ctl; } ;
struct svc_rqst {int dummy; } ;
struct nfsd_net {int /*<<< orphan*/  client_lock; } ;
struct nfsd4_session {int /*<<< orphan*/  se_client; int /*<<< orphan*/  se_cb_sec; int /*<<< orphan*/  se_cb_prog; } ;
struct nfsd4_compound_state {struct nfsd4_session* session; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct svc_rqst*) ; 
 struct nfsd_net* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ nfs_ok ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfsd_net_id ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__be32 FUNC6(struct svc_rqst *rqstp,
		struct nfsd4_compound_state *cstate,
		union nfsd4_op_u *u)
{
	struct nfsd4_backchannel_ctl *bc = &u->backchannel_ctl;
	struct nfsd4_session *session = cstate->session;
	struct nfsd_net *nn = FUNC1(FUNC0(rqstp), nfsd_net_id);
	__be32 status;

	status = FUNC2(&bc->bc_cb_sec);
	if (status)
		return status;
	FUNC4(&nn->client_lock);
	session->se_cb_prog = bc->bc_cb_program;
	session->se_cb_sec = bc->bc_cb_sec;
	FUNC5(&nn->client_lock);

	FUNC3(session->se_client);

	return nfs_ok;
}