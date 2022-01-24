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
struct inode {int dummy; } ;
struct cred {int dummy; } ;
struct common_audit_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct cred const*) ; 
 struct inode_security_struct* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  selinux_state ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cred const*) ; 

__attribute__((used)) static int FUNC6(const struct cred *cred,
			  struct inode *inode,
			  u32 perms,
			  struct common_audit_data *adp)
{
	struct inode_security_struct *isec;
	u32 sid;

	FUNC5(cred);

	if (FUNC4(FUNC0(inode)))
		return 0;

	sid = FUNC2(cred);
	isec = FUNC3(inode);

	return FUNC1(&selinux_state,
			    sid, isec->sid, isec->sclass, perms, adp);
}