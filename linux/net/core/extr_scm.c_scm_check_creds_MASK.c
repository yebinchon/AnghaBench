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
struct ucred {scalar_t__ pid; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
struct cred {int /*<<< orphan*/  user_ns; int /*<<< orphan*/  sgid; int /*<<< orphan*/  egid; int /*<<< orphan*/  gid; int /*<<< orphan*/  suid; int /*<<< orphan*/  euid; int /*<<< orphan*/  uid; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
struct TYPE_2__ {int /*<<< orphan*/  user_ns; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SETGID ; 
 int /*<<< orphan*/  CAP_SETUID ; 
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  current ; 
 struct cred* FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ int FUNC10(struct ucred *creds)
{
	const struct cred *cred = FUNC0();
	kuid_t uid = FUNC4(cred->user_ns, creds->uid);
	kgid_t gid = FUNC3(cred->user_ns, creds->gid);

	if (!FUNC9(uid) || !FUNC2(gid))
		return -EINVAL;

	if ((creds->pid == FUNC7(current) ||
	     FUNC5(FUNC6(current)->user_ns, CAP_SYS_ADMIN)) &&
	    ((FUNC8(uid, cred->uid)   || FUNC8(uid, cred->euid) ||
	      FUNC8(uid, cred->suid)) || FUNC5(cred->user_ns, CAP_SETUID)) &&
	    ((FUNC1(gid, cred->gid)   || FUNC1(gid, cred->egid) ||
	      FUNC1(gid, cred->sgid)) || FUNC5(cred->user_ns, CAP_SETGID))) {
	       return 0;
	}
	return -EPERM;
}