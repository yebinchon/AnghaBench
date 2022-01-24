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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct common_audit_data {TYPE_1__ u; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  LSM_AUDIT_DATA_DENTRY ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,struct dentry*,int) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int FUNC2 (struct cred const*,struct inode*,int /*<<< orphan*/ ,struct common_audit_data*) ; 

__attribute__((used)) static inline int FUNC3(const struct cred *cred,
				  struct dentry *dentry,
				  u32 av)
{
	struct inode *inode = FUNC1(dentry);
	struct common_audit_data ad;

	ad.type = LSM_AUDIT_DATA_DENTRY;
	ad.u.dentry = dentry;
	FUNC0(inode, dentry, true);
	return FUNC2(cred, inode, av, &ad);
}