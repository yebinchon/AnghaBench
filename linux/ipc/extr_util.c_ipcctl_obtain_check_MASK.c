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
struct kern_ipc_perm {int /*<<< orphan*/  uid; int /*<<< orphan*/  cuid; } ;
struct ipc_namespace {int /*<<< orphan*/  user_ns; } ;
struct ipc_ids {int dummy; } ;
struct ipc64_perm {int /*<<< orphan*/  mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EPERM ; 
 struct kern_ipc_perm* FUNC0 (int) ; 
 int IPC_SET ; 
 scalar_t__ FUNC1 (struct kern_ipc_perm*) ; 
 int FUNC2 (struct kern_ipc_perm*) ; 
 int /*<<< orphan*/  FUNC3 (struct kern_ipc_perm*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct kern_ipc_perm* FUNC6 (struct ipc_ids*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct kern_ipc_perm *FUNC9(struct ipc_namespace *ns,
					struct ipc_ids *ids, int id, int cmd,
					struct ipc64_perm *perm, int extra_perm)
{
	kuid_t euid;
	int err = -EPERM;
	struct kern_ipc_perm *ipcp;

	ipcp = FUNC6(ids, id);
	if (FUNC1(ipcp)) {
		err = FUNC2(ipcp);
		goto err;
	}

	FUNC3(ipcp);
	if (cmd == IPC_SET)
		FUNC4(extra_perm, perm->uid,
				   perm->gid, perm->mode);

	euid = FUNC5();
	if (FUNC8(euid, ipcp->cuid) || FUNC8(euid, ipcp->uid)  ||
	    FUNC7(ns->user_ns, CAP_SYS_ADMIN))
		return ipcp; /* successful lookup */
err:
	return FUNC0(err);
}