#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct superblock_security_struct {int flags; scalar_t__ behavior; int /*<<< orphan*/  lock; void* mntpoint_sid; void* sid; int /*<<< orphan*/  def_sid; } ;
struct super_block {int /*<<< orphan*/  s_root; struct superblock_security_struct* s_security; } ;
struct inode_security_struct {void* sid; } ;
struct TYPE_3__ {int /*<<< orphan*/  initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CONTEXT_MNT ; 
 int EINVAL ; 
 int FSCONTEXT_MNT ; 
 int ROOTCONTEXT_MNT ; 
 scalar_t__ SECURITY_FS_USE_NATIVE ; 
 unsigned long SECURITY_LSM_NATIVE_LABELS ; 
 int SE_SBINITIALIZED ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int FUNC5 (TYPE_1__*,struct super_block*) ; 
 int FUNC6 (struct super_block const*,struct super_block*) ; 
 TYPE_1__ selinux_state ; 

__attribute__((used)) static int FUNC7(const struct super_block *oldsb,
					struct super_block *newsb,
					unsigned long kern_flags,
					unsigned long *set_kern_flags)
{
	int rc = 0;
	const struct superblock_security_struct *oldsbsec = oldsb->s_security;
	struct superblock_security_struct *newsbsec = newsb->s_security;

	int set_fscontext =	(oldsbsec->flags & FSCONTEXT_MNT);
	int set_context =	(oldsbsec->flags & CONTEXT_MNT);
	int set_rootcontext =	(oldsbsec->flags & ROOTCONTEXT_MNT);

	/*
	 * if the parent was able to be mounted it clearly had no special lsm
	 * mount options.  thus we can safely deal with this superblock later
	 */
	if (!selinux_state.initialized)
		return 0;

	/*
	 * Specifying internal flags without providing a place to
	 * place the results is not allowed.
	 */
	if (kern_flags && !set_kern_flags)
		return -EINVAL;

	/* how can we clone if the old one wasn't set up?? */
	FUNC0(!(oldsbsec->flags & SE_SBINITIALIZED));

	/* if fs is reusing a sb, make sure that the contexts match */
	if (newsbsec->flags & SE_SBINITIALIZED) {
		if ((kern_flags & SECURITY_LSM_NATIVE_LABELS) && !set_context)
			*set_kern_flags |= SECURITY_LSM_NATIVE_LABELS;
		return FUNC6(oldsb, newsb);
	}

	FUNC2(&newsbsec->lock);

	newsbsec->flags = oldsbsec->flags;

	newsbsec->sid = oldsbsec->sid;
	newsbsec->def_sid = oldsbsec->def_sid;
	newsbsec->behavior = oldsbsec->behavior;

	if (newsbsec->behavior == SECURITY_FS_USE_NATIVE &&
		!(kern_flags & SECURITY_LSM_NATIVE_LABELS) && !set_context) {
		rc = FUNC5(&selinux_state, newsb);
		if (rc)
			goto out;
	}

	if (kern_flags & SECURITY_LSM_NATIVE_LABELS && !set_context) {
		newsbsec->behavior = SECURITY_FS_USE_NATIVE;
		*set_kern_flags |= SECURITY_LSM_NATIVE_LABELS;
	}

	if (set_context) {
		u32 sid = oldsbsec->mntpoint_sid;

		if (!set_fscontext)
			newsbsec->sid = sid;
		if (!set_rootcontext) {
			struct inode_security_struct *newisec = FUNC1(newsb->s_root);
			newisec->sid = sid;
		}
		newsbsec->mntpoint_sid = sid;
	}
	if (set_rootcontext) {
		const struct inode_security_struct *oldisec = FUNC1(oldsb->s_root);
		struct inode_security_struct *newisec = FUNC1(newsb->s_root);

		newisec->sid = oldisec->sid;
	}

	FUNC4(newsb);
out:
	FUNC3(&newsbsec->lock);
	return rc;
}