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
typedef  scalar_t__ u32 ;
struct inode_security_struct {scalar_t__ sid; } ;
struct file_security_struct {scalar_t__ sid; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct file* file; } ;
struct common_audit_data {TYPE_1__ u; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FD__USE ; 
 int /*<<< orphan*/  LSM_AUDIT_DATA_FILE ; 
 int /*<<< orphan*/  SECCLASS_FD ; 
 int /*<<< orphan*/  SECCLASS_SYSTEM ; 
 int /*<<< orphan*/  SYSTEM__MODULE_LOAD ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct inode_security_struct* FUNC3 (int /*<<< orphan*/ ) ; 
 struct file_security_struct* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  selinux_state ; 

__attribute__((used)) static int FUNC5(struct file *file)
{
	struct common_audit_data ad;
	struct inode_security_struct *isec;
	struct file_security_struct *fsec;
	u32 sid = FUNC1();
	int rc;

	/* init_module */
	if (file == NULL)
		return FUNC0(&selinux_state,
				    sid, sid, SECCLASS_SYSTEM,
					SYSTEM__MODULE_LOAD, NULL);

	/* finit_module */

	ad.type = LSM_AUDIT_DATA_FILE;
	ad.u.file = file;

	fsec = FUNC4(file);
	if (sid != fsec->sid) {
		rc = FUNC0(&selinux_state,
				  sid, fsec->sid, SECCLASS_FD, FD__USE, &ad);
		if (rc)
			return rc;
	}

	isec = FUNC3(FUNC2(file));
	return FUNC0(&selinux_state,
			    sid, isec->sid, SECCLASS_SYSTEM,
				SYSTEM__MODULE_LOAD, &ad);
}