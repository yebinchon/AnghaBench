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
struct the_nilfs {int ns_blocksize; int /*<<< orphan*/  ns_sem; int /*<<< orphan*/  ns_mount_state; int /*<<< orphan*/  ns_next_generation; int /*<<< orphan*/  ns_blocksize_bits; } ;
struct super_block {int s_blocksize; int /*<<< orphan*/  s_blocksize_bits; int /*<<< orphan*/  s_maxbytes; int /*<<< orphan*/  s_bdev; } ;
struct nilfs_super_block {int /*<<< orphan*/  s_state; int /*<<< orphan*/  s_log_block_size; } ;

/* Variables and functions */
 int BLOCK_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int NILFS_MAX_BLOCK_SIZE ; 
 int NILFS_MIN_BLOCK_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct super_block*,struct nilfs_super_block*) ; 
 int FUNC6 (struct the_nilfs*,struct super_block*,int,struct nilfs_super_block**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct the_nilfs*) ; 
 int FUNC10 (struct the_nilfs*,struct nilfs_super_block*) ; 
 int FUNC11 (struct the_nilfs*,struct nilfs_super_block*) ; 
 int FUNC12 (struct super_block*,struct nilfs_super_block*,char*) ; 
 int FUNC13 (struct super_block*) ; 
 int FUNC14 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct the_nilfs*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(struct the_nilfs *nilfs, struct super_block *sb, char *data)
{
	struct nilfs_super_block *sbp;
	int blocksize;
	int err;

	FUNC1(&nilfs->ns_sem);

	blocksize = FUNC14(sb, NILFS_MIN_BLOCK_SIZE);
	if (!blocksize) {
		FUNC8(sb, KERN_ERR, "unable to set blocksize");
		err = -EINVAL;
		goto out;
	}
	err = FUNC6(nilfs, sb, blocksize, &sbp);
	if (err)
		goto out;

	err = FUNC12(sb, sbp, data);
	if (err)
		goto failed_sbh;

	err = FUNC5(sb, sbp);
	if (err)
		goto failed_sbh;

	blocksize = BLOCK_SIZE << FUNC4(sbp->s_log_block_size);
	if (blocksize < NILFS_MIN_BLOCK_SIZE ||
	    blocksize > NILFS_MAX_BLOCK_SIZE) {
		FUNC8(sb, KERN_ERR,
			  "couldn't mount because of unsupported filesystem blocksize %d",
			  blocksize);
		err = -EINVAL;
		goto failed_sbh;
	}
	if (sb->s_blocksize != blocksize) {
		int hw_blocksize = FUNC0(sb->s_bdev);

		if (blocksize < hw_blocksize) {
			FUNC8(sb, KERN_ERR,
				  "blocksize %d too small for device (sector-size = %d)",
				  blocksize, hw_blocksize);
			err = -EINVAL;
			goto failed_sbh;
		}
		FUNC9(nilfs);
		FUNC15(sb, blocksize);

		err = FUNC6(nilfs, sb, blocksize, &sbp);
		if (err)
			goto out;
			/*
			 * Not to failed_sbh; sbh is released automatically
			 * when reloading fails.
			 */
	}
	nilfs->ns_blocksize_bits = sb->s_blocksize_bits;
	nilfs->ns_blocksize = blocksize;

	FUNC2(&nilfs->ns_next_generation,
			 sizeof(nilfs->ns_next_generation));

	err = FUNC10(nilfs, sbp);
	if (err)
		goto failed_sbh;

	sb->s_maxbytes = FUNC7(sb->s_blocksize_bits);

	nilfs->ns_mount_state = FUNC3(sbp->s_state);

	err = FUNC11(nilfs, sbp);
	if (err)
		goto failed_sbh;

	err = FUNC13(sb);
	if (err)
		goto failed_sbh;

	FUNC16(nilfs);
	err = 0;
 out:
	FUNC17(&nilfs->ns_sem);
	return err;

 failed_sbh:
	FUNC9(nilfs);
	goto out;
}