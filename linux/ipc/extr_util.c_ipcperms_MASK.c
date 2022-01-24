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
struct kern_ipc_perm {int mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  cgid; int /*<<< orphan*/  uid; int /*<<< orphan*/  cuid; } ;
struct ipc_namespace {int /*<<< orphan*/  user_ns; } ;
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IPC_OWNER ; 
 int /*<<< orphan*/  FUNC0 (struct kern_ipc_perm*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct kern_ipc_perm*,short) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct ipc_namespace *ns, struct kern_ipc_perm *ipcp, short flag)
{
	kuid_t euid = FUNC1();
	int requested_mode, granted_mode;

	FUNC0(ipcp);
	requested_mode = (flag >> 6) | (flag >> 3) | flag;
	granted_mode = ipcp->mode;
	if (FUNC5(euid, ipcp->cuid) ||
	    FUNC5(euid, ipcp->uid))
		granted_mode >>= 6;
	else if (FUNC2(ipcp->cgid) || FUNC2(ipcp->gid))
		granted_mode >>= 3;
	/* is there some bit set in requested_mode but not in granted_mode? */
	if ((requested_mode & ~granted_mode & 0007) &&
	    !FUNC3(ns->user_ns, CAP_IPC_OWNER))
		return -1;

	return FUNC4(ipcp, flag);
}