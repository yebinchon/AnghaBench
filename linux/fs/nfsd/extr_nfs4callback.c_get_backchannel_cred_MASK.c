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
struct rpc_clnt {char* cl_principal; } ;
struct TYPE_3__ {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct nfsd4_session {TYPE_1__ se_cb_sec; } ;
struct TYPE_4__ {char* cr_targ_princ; } ;
struct nfs4_client {scalar_t__ cl_minorversion; TYPE_2__ cl_cred; } ;
typedef  struct cred {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } const cred ;

/* Variables and functions */
 struct cred const* FUNC0 (int /*<<< orphan*/ ) ; 
 struct cred const* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static const struct cred *FUNC3(struct nfs4_client *clp, struct rpc_clnt *client, struct nfsd4_session *ses)
{
	if (clp->cl_minorversion == 0) {
		client->cl_principal = clp->cl_cred.cr_targ_princ ?
			clp->cl_cred.cr_targ_princ : "nfs";

		return FUNC0(FUNC2());
	} else {
		struct cred *kcred;

		kcred = FUNC1(NULL);
		if (!kcred)
			return NULL;

		kcred->uid = ses->se_cb_sec.uid;
		kcred->gid = ses->se_cb_sec.gid;
		return kcred;
	}
}