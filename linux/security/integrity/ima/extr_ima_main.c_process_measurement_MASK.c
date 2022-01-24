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
struct modsig {int dummy; } ;
struct integrity_iint_cache {int flags; int measured_pcrs; int /*<<< orphan*/  atomic_flags; int /*<<< orphan*/  mutex; } ;
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_mode; } ;
struct ima_template_desc {int /*<<< orphan*/  name; } ;
struct file {int f_flags; int f_mode; int /*<<< orphan*/  f_path; } ;
struct evm_ima_xattr_data {scalar_t__ type; } ;
struct cred {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  enum ima_hooks { ____Placeholder_ima_hooks } ima_hooks ;
typedef  enum hash_algo { ____Placeholder_hash_algo } hash_algo ;
struct TYPE_2__ {int s_iflags; } ;

/* Variables and functions */
 int CONFIG_IMA_MEASURE_PCR_IDX ; 
 int EACCES ; 
 int EBADF ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ EVM_IMA_XATTR_DIGSIG ; 
 int FILE_CHECK ; 
 int FMODE_WRITE ; 
 int IMA_ACTION_FLAGS ; 
 int IMA_APPRAISE ; 
 int IMA_APPRAISED ; 
 int IMA_APPRAISED_SUBMASK ; 
 int IMA_APPRAISE_ENFORCE ; 
 int IMA_APPRAISE_SUBMASK ; 
 int IMA_AUDIT ; 
 int /*<<< orphan*/  IMA_CHANGE_ATTR ; 
 int /*<<< orphan*/  IMA_CHANGE_XATTR ; 
 int /*<<< orphan*/  IMA_DIGSIG ; 
 int IMA_DONE_MASK ; 
 int IMA_DO_MASK ; 
 int IMA_FAIL_UNVERIFIABLE_SIGS ; 
 int IMA_FILE_APPRAISE ; 
 int IMA_HASH ; 
 int IMA_HASHED ; 
 int IMA_MEASURE ; 
 int IMA_MEASURED ; 
 int IMA_MODSIG_ALLOWED ; 
 int IMA_NEW_FILE ; 
 int IMA_PERMIT_DIRECTIO ; 
 int /*<<< orphan*/  IMA_TEMPLATE_IMA_NAME ; 
 int /*<<< orphan*/  IMA_UPDATE_XATTR ; 
 int MAY_WRITE ; 
 int MMAP_CHECK ; 
 int NAME_MAX ; 
 int O_DIRECT ; 
 int SB_I_IMA_UNVERIFIABLE_SIGNATURE ; 
 int SB_I_UNTRUSTED_MOUNTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct inode* FUNC3 (struct file*) ; 
 int ima_appraise ; 
 int FUNC4 (int,struct integrity_iint_cache*,struct file*,char const*,struct evm_ima_xattr_data*,int,struct modsig*) ; 
 int /*<<< orphan*/  FUNC5 (struct integrity_iint_cache*,char const*) ; 
 int FUNC6 (struct integrity_iint_cache*,struct file*,char*,int /*<<< orphan*/ ,int,struct modsig*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char**,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct modsig*) ; 
 int FUNC9 (struct inode*,struct cred const*,int /*<<< orphan*/ ,int,int,int*,struct ima_template_desc**) ; 
 int FUNC10 (struct integrity_iint_cache*,int) ; 
 int FUNC11 (struct evm_ima_xattr_data*,int) ; 
 int ima_policy_flag ; 
 int /*<<< orphan*/  FUNC12 (struct file*,struct integrity_iint_cache*,int,char**,char const**,char*) ; 
 int FUNC13 (int,char*,int /*<<< orphan*/ ,struct modsig**) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct evm_ima_xattr_data**) ; 
 int /*<<< orphan*/  FUNC15 (struct integrity_iint_cache*,struct file*,char const*,struct evm_ima_xattr_data*,int,struct modsig*,int,struct ima_template_desc*) ; 
 scalar_t__ FUNC16 (struct ima_template_desc*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 struct integrity_iint_cache* FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (struct evm_ima_xattr_data*) ; 
 int FUNC21 (int,struct file*,char**,char const**,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC28(struct file *file, const struct cred *cred,
			       u32 secid, char *buf, loff_t size, int mask,
			       enum ima_hooks func)
{
	struct inode *inode = FUNC3(file);
	struct integrity_iint_cache *iint = NULL;
	struct ima_template_desc *template_desc = NULL;
	char *pathbuf = NULL;
	char filename[NAME_MAX];
	const char *pathname = NULL;
	int rc = 0, action, must_appraise = 0;
	int pcr = CONFIG_IMA_MEASURE_PCR_IDX;
	struct evm_ima_xattr_data *xattr_value = NULL;
	struct modsig *modsig = NULL;
	int xattr_len = 0;
	bool violation_check;
	enum hash_algo hash_algo;

	if (!ima_policy_flag || !FUNC0(inode->i_mode))
		return 0;

	/* Return an IMA_MEASURE, IMA_APPRAISE, IMA_AUDIT action
	 * bitmask based on the appraise/audit/measurement policy.
	 * Included is the appraise submask.
	 */
	action = FUNC9(inode, cred, secid, mask, func, &pcr,
				&template_desc);
	violation_check = ((func == FILE_CHECK || func == MMAP_CHECK) &&
			   (ima_policy_flag & IMA_MEASURE));
	if (!action && !violation_check)
		return 0;

	must_appraise = action & IMA_APPRAISE;

	/*  Is the appraise rule hook specific?  */
	if (action & IMA_FILE_APPRAISE)
		func = FILE_CHECK;

	FUNC17(inode);

	if (action) {
		iint = FUNC19(inode);
		if (!iint)
			rc = -ENOMEM;
	}

	if (!rc && violation_check)
		FUNC12(file, iint, action & IMA_MEASURE,
					 &pathbuf, &pathname, filename);

	FUNC18(inode);

	if (rc)
		goto out;
	if (!action)
		goto out;

	FUNC22(&iint->mutex);

	if (FUNC26(IMA_CHANGE_ATTR, &iint->atomic_flags))
		/* reset appraisal flags if ima_inode_post_setattr was called */
		iint->flags &= ~(IMA_APPRAISE | IMA_APPRAISED |
				 IMA_APPRAISE_SUBMASK | IMA_APPRAISED_SUBMASK |
				 IMA_ACTION_FLAGS);

	/*
	 * Re-evaulate the file if either the xattr has changed or the
	 * kernel has no way of detecting file change on the filesystem.
	 * (Limited to privileged mounted filesystems.)
	 */
	if (FUNC26(IMA_CHANGE_XATTR, &iint->atomic_flags) ||
	    ((inode->i_sb->s_iflags & SB_I_IMA_UNVERIFIABLE_SIGNATURE) &&
	     !(inode->i_sb->s_iflags & SB_I_UNTRUSTED_MOUNTER) &&
	     !(action & IMA_FAIL_UNVERIFIABLE_SIGS))) {
		iint->flags &= ~IMA_DONE_MASK;
		iint->measured_pcrs = 0;
	}

	/* Determine if already appraised/measured based on bitmask
	 * (IMA_MEASURE, IMA_MEASURED, IMA_XXXX_APPRAISE, IMA_XXXX_APPRAISED,
	 *  IMA_AUDIT, IMA_AUDITED)
	 */
	iint->flags |= action;
	action &= IMA_DO_MASK;
	action &= ~((iint->flags & (IMA_DONE_MASK ^ IMA_MEASURED)) >> 1);

	/* If target pcr is already measured, unset IMA_MEASURE action */
	if ((action & IMA_MEASURE) && (iint->measured_pcrs & (0x1 << pcr)))
		action ^= IMA_MEASURE;

	/* HASH sets the digital signature and update flags, nothing else */
	if ((action & IMA_HASH) &&
	    !(FUNC27(IMA_DIGSIG, &iint->atomic_flags))) {
		xattr_len = FUNC14(FUNC2(file), &xattr_value);
		if ((xattr_value && xattr_len > 2) &&
		    (xattr_value->type == EVM_IMA_XATTR_DIGSIG))
			FUNC24(IMA_DIGSIG, &iint->atomic_flags);
		iint->flags |= IMA_HASHED;
		action ^= IMA_HASH;
		FUNC24(IMA_UPDATE_XATTR, &iint->atomic_flags);
	}

	/* Nothing to do, just return existing appraised status */
	if (!action) {
		if (must_appraise) {
			rc = FUNC21(func, file, &pathbuf,
						  &pathname, filename);
			if (!rc)
				rc = FUNC10(iint, func);
		}
		goto out_locked;
	}

	if ((action & IMA_APPRAISE_SUBMASK) ||
	    FUNC25(template_desc->name, IMA_TEMPLATE_IMA_NAME) != 0) {
		/* read 'security.ima' */
		xattr_len = FUNC14(FUNC2(file), &xattr_value);

		/*
		 * Read the appended modsig if allowed by the policy, and allow
		 * an additional measurement list entry, if needed, based on the
		 * template format and whether the file was already measured.
		 */
		if (iint->flags & IMA_MODSIG_ALLOWED) {
			rc = FUNC13(func, buf, size, &modsig);

			if (!rc && FUNC16(template_desc) &&
			    iint->flags & IMA_MEASURED)
				action |= IMA_MEASURE;
		}
	}

	hash_algo = FUNC11(xattr_value, xattr_len);

	rc = FUNC6(iint, file, buf, size, hash_algo, modsig);
	if (rc != 0 && rc != -EBADF && rc != -EINVAL)
		goto out_locked;

	if (!pathbuf)	/* ima_rdwr_violation possibly pre-fetched */
		pathname = FUNC7(&file->f_path, &pathbuf, filename);

	if (action & IMA_MEASURE)
		FUNC15(iint, file, pathname,
				      xattr_value, xattr_len, modsig, pcr,
				      template_desc);
	if (rc == 0 && (action & IMA_APPRAISE_SUBMASK)) {
		FUNC17(inode);
		rc = FUNC4(func, iint, file, pathname,
					      xattr_value, xattr_len, modsig);
		FUNC18(inode);
		if (!rc)
			rc = FUNC21(func, file, &pathbuf,
						  &pathname, filename);
	}
	if (action & IMA_AUDIT)
		FUNC5(iint, pathname);

	if ((file->f_flags & O_DIRECT) && (iint->flags & IMA_PERMIT_DIRECTIO))
		rc = 0;
out_locked:
	if ((mask & MAY_WRITE) && FUNC27(IMA_DIGSIG, &iint->atomic_flags) &&
	     !(iint->flags & IMA_NEW_FILE))
		rc = -EACCES;
	FUNC23(&iint->mutex);
	FUNC20(xattr_value);
	FUNC8(modsig);
out:
	if (pathbuf)
		FUNC1(pathbuf);
	if (must_appraise) {
		if (rc && (ima_appraise & IMA_APPRAISE_ENFORCE))
			return -EACCES;
		if (file->f_mode & FMODE_WRITE)
			FUNC24(IMA_UPDATE_XATTR, &iint->atomic_flags);
	}
	return 0;
}