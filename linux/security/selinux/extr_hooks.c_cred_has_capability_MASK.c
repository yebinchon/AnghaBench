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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct cred {int dummy; } ;
struct TYPE_2__ {int cap; } ;
struct common_audit_data {TYPE_1__ u; int /*<<< orphan*/  type; } ;
struct av_decision {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int CAP_OPT_NOAUDIT ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  LSM_AUDIT_DATA_CAP ; 
 int /*<<< orphan*/  SECCLASS_CAP2_USERNS ; 
 int /*<<< orphan*/  SECCLASS_CAPABILITY ; 
 int /*<<< orphan*/  SECCLASS_CAPABILITY2 ; 
 int /*<<< orphan*/  SECCLASS_CAP_USERNS ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct av_decision*,int,struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct av_decision*) ; 
 int /*<<< orphan*/  FUNC5 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  selinux_state ; 

__attribute__((used)) static int FUNC7(const struct cred *cred,
			       int cap, unsigned int opts, bool initns)
{
	struct common_audit_data ad;
	struct av_decision avd;
	u16 sclass;
	u32 sid = FUNC5(cred);
	u32 av = FUNC2(cap);
	int rc;

	ad.type = LSM_AUDIT_DATA_CAP;
	ad.u.cap = cap;

	switch (FUNC1(cap)) {
	case 0:
		sclass = initns ? SECCLASS_CAPABILITY : SECCLASS_CAP_USERNS;
		break;
	case 1:
		sclass = initns ? SECCLASS_CAPABILITY2 : SECCLASS_CAP2_USERNS;
		break;
	default:
		FUNC6("SELinux:  out of range capability %d\n", cap);
		FUNC0();
		return -EINVAL;
	}

	rc = FUNC4(&selinux_state,
				  sid, sid, sclass, av, 0, &avd);
	if (!(opts & CAP_OPT_NOAUDIT)) {
		int rc2 = FUNC3(&selinux_state,
				    sid, sid, sclass, av, &avd, rc, &ad, 0);
		if (rc2)
			return rc2;
	}
	return rc;
}