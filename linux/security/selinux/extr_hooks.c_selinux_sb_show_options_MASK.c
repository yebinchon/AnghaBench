#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct superblock_security_struct {int flags; TYPE_1__* sb; int /*<<< orphan*/  def_sid; int /*<<< orphan*/  mntpoint_sid; int /*<<< orphan*/  sid; } ;
struct super_block {struct superblock_security_struct* s_security; } ;
struct seq_file {int dummy; } ;
struct inode_security_struct {int /*<<< orphan*/  sid; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  initialized; } ;
struct TYPE_3__ {struct dentry* s_root; } ;

/* Variables and functions */
 int CONTEXT_MNT ; 
 int /*<<< orphan*/  CONTEXT_STR ; 
 int DEFCONTEXT_MNT ; 
 int /*<<< orphan*/  DEFCONTEXT_STR ; 
 int FSCONTEXT_MNT ; 
 int /*<<< orphan*/  FSCONTEXT_STR ; 
 int ROOTCONTEXT_MNT ; 
 int /*<<< orphan*/  ROOTCONTEXT_STR ; 
 int SBLABEL_MNT ; 
 int /*<<< orphan*/  SECLABEL_STR ; 
 int SE_SBINITIALIZED ; 
 struct inode_security_struct* FUNC0 (struct dentry*) ; 
 TYPE_2__ selinux_state ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct seq_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct seq_file *m, struct super_block *sb)
{
	struct superblock_security_struct *sbsec = sb->s_security;
	int rc;

	if (!(sbsec->flags & SE_SBINITIALIZED))
		return 0;

	if (!selinux_state.initialized)
		return 0;

	if (sbsec->flags & FSCONTEXT_MNT) {
		FUNC1(m, ',');
		FUNC2(m, FSCONTEXT_STR);
		rc = FUNC3(m, sbsec->sid);
		if (rc)
			return rc;
	}
	if (sbsec->flags & CONTEXT_MNT) {
		FUNC1(m, ',');
		FUNC2(m, CONTEXT_STR);
		rc = FUNC3(m, sbsec->mntpoint_sid);
		if (rc)
			return rc;
	}
	if (sbsec->flags & DEFCONTEXT_MNT) {
		FUNC1(m, ',');
		FUNC2(m, DEFCONTEXT_STR);
		rc = FUNC3(m, sbsec->def_sid);
		if (rc)
			return rc;
	}
	if (sbsec->flags & ROOTCONTEXT_MNT) {
		struct dentry *root = sbsec->sb->s_root;
		struct inode_security_struct *isec = FUNC0(root);
		FUNC1(m, ',');
		FUNC2(m, ROOTCONTEXT_STR);
		rc = FUNC3(m, isec->sid);
		if (rc)
			return rc;
	}
	if (sbsec->flags & SBLABEL_MNT) {
		FUNC1(m, ',');
		FUNC2(m, SECLABEL_STR);
	}
	return 0;
}