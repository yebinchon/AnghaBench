#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct linux_binprm {TYPE_4__* cred; int /*<<< orphan*/  per_clear; TYPE_3__* file; } ;
struct inode {unsigned int i_mode; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;
struct TYPE_8__ {int /*<<< orphan*/  egid; int /*<<< orphan*/  euid; int /*<<< orphan*/  user_ns; } ;
struct TYPE_6__ {TYPE_1__* dentry; int /*<<< orphan*/  mnt; } ;
struct TYPE_7__ {TYPE_2__ f_path; } ;
struct TYPE_5__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  PER_CLEAR_ON_SETID ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int S_ISGID ; 
 unsigned int S_ISUID ; 
 unsigned int S_IXGRP ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct linux_binprm *bprm)
{
	struct inode *inode;
	unsigned int mode;
	kuid_t uid;
	kgid_t gid;

	/*
	 * Since this can be called multiple times (via prepare_binprm),
	 * we must clear any previous work done when setting set[ug]id
	 * bits from any earlier bprm->file uses (for example when run
	 * first for a setuid script then again for its interpreter).
	 */
	bprm->cred->euid = FUNC2();
	bprm->cred->egid = FUNC1();

	if (!FUNC7(bprm->file->f_path.mnt))
		return;

	if (FUNC8(current))
		return;

	inode = bprm->file->f_path.dentry->d_inode;
	mode = FUNC0(inode->i_mode);
	if (!(mode & (S_ISUID|S_ISGID)))
		return;

	/* Be careful if suid/sgid is set */
	FUNC3(inode);

	/* reload atomically mode/uid/gid now that lock held */
	mode = inode->i_mode;
	uid = inode->i_uid;
	gid = inode->i_gid;
	FUNC4(inode);

	/* We ignore suid/sgid if there are no mappings for them in the ns */
	if (!FUNC6(bprm->cred->user_ns, uid) ||
		 !FUNC5(bprm->cred->user_ns, gid))
		return;

	if (mode & S_ISUID) {
		bprm->per_clear |= PER_CLEAR_ON_SETID;
		bprm->cred->euid = uid;
	}

	if ((mode & (S_ISGID | S_IXGRP)) == (S_ISGID | S_IXGRP)) {
		bprm->per_clear |= PER_CLEAR_ON_SETID;
		bprm->cred->egid = gid;
	}
}