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
struct the_nilfs {int ns_crc_seed; int ns_sbwtime; int ns_blocksize; int /*<<< orphan*/  ns_dat; int /*<<< orphan*/  ns_sufile; int /*<<< orphan*/  ns_cpfile; int /*<<< orphan*/  ns_sem; int /*<<< orphan*/  ns_mount_state; struct nilfs_super_block** ns_sbp; int /*<<< orphan*/  ns_sbsize; int /*<<< orphan*/  ns_bdev; } ;
struct super_block {unsigned int s_flags; } ;
struct nilfs_super_block {int /*<<< orphan*/  s_feature_compat_ro; int /*<<< orphan*/  s_log_block_size; int /*<<< orphan*/  s_wtime; int /*<<< orphan*/  s_crc_seed; } ;
struct nilfs_recovery_info {int /*<<< orphan*/  ri_super_root; } ;
typedef  int __u64 ;

/* Variables and functions */
 int BLOCK_SIZE ; 
 int EINVAL ; 
 int EROFS ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int NILFS_FEATURE_COMPAT_RO_SUPP ; 
 int /*<<< orphan*/  NILFS_VALID_FS ; 
 int /*<<< orphan*/  NORECOVERY ; 
 unsigned int SB_RDONLY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nilfs_super_block*,struct nilfs_super_block*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct nilfs_recovery_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct nilfs_recovery_info*) ; 
 int FUNC9 (struct the_nilfs*,struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC11 (struct the_nilfs*,struct super_block*,struct nilfs_recovery_info*) ; 
 int FUNC12 (struct the_nilfs*,struct nilfs_recovery_info*) ; 
 int FUNC13 (struct the_nilfs*,struct nilfs_super_block*) ; 
 scalar_t__ FUNC14 (struct the_nilfs*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC16 (struct nilfs_super_block*) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

int FUNC19(struct the_nilfs *nilfs, struct super_block *sb)
{
	struct nilfs_recovery_info ri;
	unsigned int s_flags = sb->s_flags;
	int really_read_only = FUNC0(nilfs->ns_bdev);
	int valid_fs = FUNC15(nilfs);
	int err;

	if (!valid_fs) {
		FUNC10(sb, KERN_WARNING, "mounting unchecked fs");
		if (s_flags & SB_RDONLY) {
			FUNC10(sb, KERN_INFO,
				  "recovery required for readonly filesystem");
			FUNC10(sb, KERN_INFO,
				  "write access will be enabled during recovery");
		}
	}

	FUNC8(&ri);

	err = FUNC12(nilfs, &ri);
	if (FUNC17(err)) {
		struct nilfs_super_block **sbp = nilfs->ns_sbp;
		int blocksize;

		if (err != -EINVAL)
			goto scan_error;

		if (!FUNC16(sbp[1])) {
			FUNC10(sb, KERN_WARNING,
				  "unable to fall back to spare super block");
			goto scan_error;
		}
		FUNC10(sb, KERN_INFO,
			  "trying rollback from an earlier position");

		/*
		 * restore super block with its spare and reconfigure
		 * relevant states of the nilfs object.
		 */
		FUNC5(sbp[0], sbp[1], nilfs->ns_sbsize);
		nilfs->ns_crc_seed = FUNC3(sbp[0]->s_crc_seed);
		nilfs->ns_sbwtime = FUNC4(sbp[0]->s_wtime);

		/* verify consistency between two super blocks */
		blocksize = BLOCK_SIZE << FUNC3(sbp[0]->s_log_block_size);
		if (blocksize != nilfs->ns_blocksize) {
			FUNC10(sb, KERN_WARNING,
				  "blocksize differs between two super blocks (%d != %d)",
				  blocksize, nilfs->ns_blocksize);
			goto scan_error;
		}

		err = FUNC13(nilfs, sbp[0]);
		if (err)
			goto scan_error;

		/* drop clean flag to allow roll-forward and recovery */
		nilfs->ns_mount_state &= ~NILFS_VALID_FS;
		valid_fs = 0;

		err = FUNC12(nilfs, &ri);
		if (err)
			goto scan_error;
	}

	err = FUNC9(nilfs, sb, ri.ri_super_root);
	if (FUNC17(err)) {
		FUNC10(sb, KERN_ERR, "error %d while loading super root",
			  err);
		goto failed;
	}

	if (valid_fs)
		goto skip_recovery;

	if (s_flags & SB_RDONLY) {
		__u64 features;

		if (FUNC14(nilfs, NORECOVERY)) {
			FUNC10(sb, KERN_INFO,
				  "norecovery option specified, skipping roll-forward recovery");
			goto skip_recovery;
		}
		features = FUNC4(nilfs->ns_sbp[0]->s_feature_compat_ro) &
			~NILFS_FEATURE_COMPAT_RO_SUPP;
		if (features) {
			FUNC10(sb, KERN_ERR,
				  "couldn't proceed with recovery because of unsupported optional features (%llx)",
				  (unsigned long long)features);
			err = -EROFS;
			goto failed_unload;
		}
		if (really_read_only) {
			FUNC10(sb, KERN_ERR,
				  "write access unavailable, cannot proceed");
			err = -EROFS;
			goto failed_unload;
		}
		sb->s_flags &= ~SB_RDONLY;
	} else if (FUNC14(nilfs, NORECOVERY)) {
		FUNC10(sb, KERN_ERR,
			  "recovery cancelled because norecovery option was specified for a read/write mount");
		err = -EINVAL;
		goto failed_unload;
	}

	err = FUNC11(nilfs, sb, &ri);
	if (err)
		goto failed_unload;

	FUNC1(&nilfs->ns_sem);
	nilfs->ns_mount_state |= NILFS_VALID_FS; /* set "clean" flag */
	err = FUNC6(sb);
	FUNC18(&nilfs->ns_sem);

	if (err) {
		FUNC10(sb, KERN_ERR,
			  "error %d updating super block. recovery unfinished.",
			  err);
		goto failed_unload;
	}
	FUNC10(sb, KERN_INFO, "recovery complete");

 skip_recovery:
	FUNC7(&ri);
	sb->s_flags = s_flags;
	return 0;

 scan_error:
	FUNC10(sb, KERN_ERR, "error %d while searching super root", err);
	goto failed;

 failed_unload:
	FUNC2(nilfs->ns_cpfile);
	FUNC2(nilfs->ns_sufile);
	FUNC2(nilfs->ns_dat);

 failed:
	FUNC7(&ri);
	sb->s_flags = s_flags;
	return err;
}