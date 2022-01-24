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
typedef  scalar_t__ u32 ;
struct inode_security_struct {scalar_t__ sid; } ;
struct inode {int dummy; } ;
struct file_security_struct {scalar_t__ sid; scalar_t__ isid; scalar_t__ pseqno; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 struct inode* FUNC2 (struct file*) ; 
 struct inode_security_struct* FUNC3 (struct inode*) ; 
 struct file_security_struct* FUNC4 (struct file*) ; 
 int FUNC5 (struct file*,int) ; 
 int /*<<< orphan*/  selinux_state ; 

__attribute__((used)) static int FUNC6(struct file *file, int mask)
{
	struct inode *inode = FUNC2(file);
	struct file_security_struct *fsec = FUNC4(file);
	struct inode_security_struct *isec;
	u32 sid = FUNC1();

	if (!mask)
		/* No permission to check.  Existence test. */
		return 0;

	isec = FUNC3(inode);
	if (sid == fsec->sid && fsec->isid == isec->sid &&
	    fsec->pseqno == FUNC0(&selinux_state))
		/* No change since file_open check. */
		return 0;

	return FUNC5(file, mask);
}