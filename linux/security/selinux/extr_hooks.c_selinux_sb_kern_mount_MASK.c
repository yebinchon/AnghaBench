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
struct super_block {int /*<<< orphan*/  s_root; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dentry; } ;
struct common_audit_data {TYPE_1__ u; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FILESYSTEM__MOUNT ; 
 int /*<<< orphan*/  LSM_AUDIT_DATA_DENTRY ; 
 struct cred* FUNC0 () ; 
 int FUNC1 (struct cred const*,struct super_block*,int /*<<< orphan*/ ,struct common_audit_data*) ; 

__attribute__((used)) static int FUNC2(struct super_block *sb)
{
	const struct cred *cred = FUNC0();
	struct common_audit_data ad;

	ad.type = LSM_AUDIT_DATA_DENTRY;
	ad.u.dentry = sb->s_root;
	return FUNC1(cred, sb, FILESYSTEM__MOUNT, &ad);
}