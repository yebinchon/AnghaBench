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
struct inode_security_struct {int /*<<< orphan*/  sclass; int /*<<< orphan*/  sid; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct common_audit_data {TYPE_1__ u; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILE__READ ; 
 scalar_t__ FUNC0 (struct inode_security_struct*) ; 
 int /*<<< orphan*/  LSM_AUDIT_DATA_DENTRY ; 
 int FUNC1 (struct inode_security_struct*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct cred const*) ; 
 struct cred* FUNC4 () ; 
 struct inode_security_struct* FUNC5 (struct inode*,int) ; 
 int /*<<< orphan*/  selinux_state ; 
 int /*<<< orphan*/  FUNC6 (struct cred const*) ; 

__attribute__((used)) static int FUNC7(struct dentry *dentry, struct inode *inode,
				     bool rcu)
{
	const struct cred *cred = FUNC4();
	struct common_audit_data ad;
	struct inode_security_struct *isec;
	u32 sid;

	FUNC6(cred);

	ad.type = LSM_AUDIT_DATA_DENTRY;
	ad.u.dentry = dentry;
	sid = FUNC3(cred);
	isec = FUNC5(inode, rcu);
	if (FUNC0(isec))
		return FUNC1(isec);

	return FUNC2(&selinux_state,
			    sid, isec->sid, isec->sclass, FILE__READ, &ad);
}