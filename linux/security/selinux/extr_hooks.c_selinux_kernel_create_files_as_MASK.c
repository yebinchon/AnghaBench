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
struct task_security_struct {int /*<<< orphan*/  create_sid; } ;
struct inode_security_struct {int /*<<< orphan*/  sid; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERNEL_SERVICE__CREATE_FILES_AS ; 
 int /*<<< orphan*/  SECCLASS_KERNEL_SERVICE ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct inode_security_struct* FUNC2 (struct inode*) ; 
 struct task_security_struct* FUNC3 (struct cred*) ; 
 int /*<<< orphan*/  selinux_state ; 

__attribute__((used)) static int FUNC4(struct cred *new, struct inode *inode)
{
	struct inode_security_struct *isec = FUNC2(inode);
	struct task_security_struct *tsec = FUNC3(new);
	u32 sid = FUNC1();
	int ret;

	ret = FUNC0(&selinux_state,
			   sid, isec->sid,
			   SECCLASS_KERNEL_SERVICE,
			   KERNEL_SERVICE__CREATE_FILES_AS,
			   NULL);

	if (ret == 0)
		tsec->create_sid = isec->sid;
	return ret;
}