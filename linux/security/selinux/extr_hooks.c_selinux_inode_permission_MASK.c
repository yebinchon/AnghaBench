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
typedef  int /*<<< orphan*/  u32 ;
struct inode_security_struct {int /*<<< orphan*/  sclass; int /*<<< orphan*/  sid; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct cred {int dummy; } ;
struct av_decision {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVC_NONBLOCKING ; 
 int /*<<< orphan*/  FILE__AUDIT_ACCESS ; 
 scalar_t__ FUNC0 (struct inode_security_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int MAY_ACCESS ; 
 int MAY_APPEND ; 
 int MAY_EXEC ; 
 int MAY_NOT_BLOCK ; 
 int MAY_READ ; 
 int MAY_WRITE ; 
 int FUNC2 (struct inode_security_struct*) ; 
 int FUNC3 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct av_decision*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct av_decision*) ; 
 int /*<<< orphan*/  FUNC6 (struct cred const*) ; 
 struct cred* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 struct inode_security_struct* FUNC9 (struct inode*,unsigned int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  selinux_state ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cred const*) ; 

__attribute__((used)) static int FUNC13(struct inode *inode, int mask)
{
	const struct cred *cred = FUNC7();
	u32 perms;
	bool from_access;
	unsigned flags = mask & MAY_NOT_BLOCK;
	struct inode_security_struct *isec;
	u32 sid;
	struct av_decision avd;
	int rc, rc2;
	u32 audited, denied;

	from_access = mask & MAY_ACCESS;
	mask &= (MAY_READ|MAY_WRITE|MAY_EXEC|MAY_APPEND);

	/* No permission to check.  Existence test. */
	if (!mask)
		return 0;

	FUNC12(cred);

	if (FUNC11(FUNC1(inode)))
		return 0;

	perms = FUNC8(inode->i_mode, mask);

	sid = FUNC6(cred);
	isec = FUNC9(inode, flags & MAY_NOT_BLOCK);
	if (FUNC0(isec))
		return FUNC2(isec);

	rc = FUNC5(&selinux_state,
				  sid, isec->sid, isec->sclass, perms,
				  (flags & MAY_NOT_BLOCK) ? AVC_NONBLOCKING : 0,
				  &avd);
	audited = FUNC4(perms, &avd, rc,
				     from_access ? FILE__AUDIT_ACCESS : 0,
				     &denied);
	if (FUNC10(!audited))
		return rc;

	rc2 = FUNC3(inode, perms, audited, denied, rc, flags);
	if (rc2)
		return rc2;
	return rc;
}