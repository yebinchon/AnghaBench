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
struct nfs_client {int /*<<< orphan*/  cl_hostname; int /*<<< orphan*/  cl_state; TYPE_1__* cl_mvops; int /*<<< orphan*/  cl_count; } ;
struct TYPE_2__ {int /*<<< orphan*/  nograce_recovery_ops; int /*<<< orphan*/  reboot_recovery_ops; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  NFS4CLNT_BIND_CONN_TO_SESSION ; 
 int /*<<< orphan*/  NFS4CLNT_CHECK_LEASE ; 
 int /*<<< orphan*/  NFS4CLNT_DELEGATION_EXPIRED ; 
 int /*<<< orphan*/  NFS4CLNT_DELEGRETURN ; 
 int /*<<< orphan*/  NFS4CLNT_DELEGRETURN_RUNNING ; 
 int /*<<< orphan*/  NFS4CLNT_LEASE_EXPIRED ; 
 int /*<<< orphan*/  NFS4CLNT_LEASE_MOVED ; 
 int /*<<< orphan*/  NFS4CLNT_MANAGER_RUNNING ; 
 int /*<<< orphan*/  NFS4CLNT_MOVED ; 
 int /*<<< orphan*/  NFS4CLNT_PURGE_STATE ; 
 int /*<<< orphan*/  NFS4CLNT_RECLAIM_NOGRACE ; 
 int /*<<< orphan*/  NFS4CLNT_RECLAIM_REBOOT ; 
 int /*<<< orphan*/  NFS4CLNT_RUN_MANAGER ; 
 int /*<<< orphan*/  NFS4CLNT_SESSION_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nfs_client*) ; 
 int FUNC2 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfs_client*) ; 
 int FUNC4 (struct nfs_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_client*) ; 
 int FUNC6 (struct nfs_client*) ; 
 int FUNC7 (struct nfs_client*) ; 
 int FUNC8 (struct nfs_client*) ; 
 int FUNC9 (struct nfs_client*) ; 
 int FUNC10 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC13 (struct nfs_client*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*,char const*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 scalar_t__ FUNC19 (char const*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC23(struct nfs_client *clp)
{
	int status = 0;
	const char *section = "", *section_sep = "";

	/* Ensure exclusive access to NFSv4 state */
	do {
		FUNC0(NFS4CLNT_RUN_MANAGER, &clp->cl_state);
		if (FUNC22(NFS4CLNT_PURGE_STATE, &clp->cl_state)) {
			section = "purge state";
			status = FUNC8(clp);
			if (status < 0)
				goto out_error;
			continue;
		}

		if (FUNC22(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state)) {
			section = "lease expired";
			/* We're going to have to re-establish a clientid */
			status = FUNC9(clp);
			if (status < 0)
				goto out_error;
			continue;
		}

		/* Initialize or reset the session */
		if (FUNC20(NFS4CLNT_SESSION_RESET, &clp->cl_state)) {
			section = "reset session";
			status = FUNC10(clp);
			if (FUNC22(NFS4CLNT_LEASE_EXPIRED, &clp->cl_state))
				continue;
			if (status < 0)
				goto out_error;
		}

		/* Send BIND_CONN_TO_SESSION */
		if (FUNC20(NFS4CLNT_BIND_CONN_TO_SESSION,
				&clp->cl_state)) {
			section = "bind conn to session";
			status = FUNC1(clp);
			if (status < 0)
				goto out_error;
			continue;
		}

		if (FUNC20(NFS4CLNT_CHECK_LEASE, &clp->cl_state)) {
			section = "check lease";
			status = FUNC2(clp);
			if (status < 0)
				goto out_error;
			continue;
		}

		if (FUNC20(NFS4CLNT_MOVED, &clp->cl_state)) {
			section = "migration";
			status = FUNC7(clp);
			if (status < 0)
				goto out_error;
		}

		if (FUNC20(NFS4CLNT_LEASE_MOVED, &clp->cl_state)) {
			section = "lease moved";
			status = FUNC6(clp);
			if (status < 0)
				goto out_error;
		}

		/* First recover reboot state... */
		if (FUNC22(NFS4CLNT_RECLAIM_REBOOT, &clp->cl_state)) {
			section = "reclaim reboot";
			status = FUNC4(clp,
				clp->cl_mvops->reboot_recovery_ops);
			if (status == -EAGAIN)
				continue;
			if (status < 0)
				goto out_error;
			FUNC11(clp);
		}

		/* Detect expired delegations... */
		if (FUNC20(NFS4CLNT_DELEGATION_EXPIRED, &clp->cl_state)) {
			section = "detect expired delegations";
			FUNC13(clp);
			continue;
		}

		/* Now recover expired state... */
		if (FUNC22(NFS4CLNT_RECLAIM_NOGRACE, &clp->cl_state)) {
			section = "reclaim nograce";
			status = FUNC4(clp,
				clp->cl_mvops->nograce_recovery_ops);
			if (status == -EAGAIN)
				continue;
			if (status < 0)
				goto out_error;
			FUNC0(NFS4CLNT_RECLAIM_NOGRACE, &clp->cl_state);
		}

		FUNC5(clp);
		FUNC3(clp);

		if (!FUNC21(NFS4CLNT_DELEGRETURN_RUNNING, &clp->cl_state)) {
			if (FUNC20(NFS4CLNT_DELEGRETURN, &clp->cl_state)) {
				FUNC12(clp);
				FUNC16(NFS4CLNT_RUN_MANAGER, &clp->cl_state);
			}
			FUNC0(NFS4CLNT_DELEGRETURN_RUNNING, &clp->cl_state);
		}

		/* Did we race with an attempt to give us more work? */
		if (!FUNC22(NFS4CLNT_RUN_MANAGER, &clp->cl_state))
			return;
		if (FUNC21(NFS4CLNT_MANAGER_RUNNING, &clp->cl_state) != 0)
			return;
	} while (FUNC15(&clp->cl_count) > 1 && !FUNC17());
	goto out_drain;

out_error:
	if (FUNC19(section))
		section_sep = ": ";
	FUNC14("NFS: state manager%s%s failed on NFSv4 server %s"
			" with error %d\n", section_sep, section,
			clp->cl_hostname, -status);
	FUNC18(1);
out_drain:
	FUNC5(clp);
	FUNC3(clp);
}