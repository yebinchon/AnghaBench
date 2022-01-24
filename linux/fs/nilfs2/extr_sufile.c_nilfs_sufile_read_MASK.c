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
struct super_block {size_t s_blocksize; } ;
struct nilfs_sufile_info {scalar_t__ allocmin; scalar_t__ allocmax; int /*<<< orphan*/  ncleansegs; } ;
struct nilfs_sufile_header {int /*<<< orphan*/  sh_ncleansegs; } ;
struct nilfs_inode {int dummy; } ;
struct inode {int i_state; } ;
struct buffer_head {int /*<<< orphan*/  b_page; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int I_NEW ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  NILFS_MDT_GFP ; 
 size_t NILFS_MIN_SEGMENT_USAGE_SIZE ; 
 int /*<<< orphan*/  NILFS_SUFILE_INO ; 
 struct nilfs_sufile_info* FUNC0 (struct inode*) ; 
 int FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC7 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,size_t,int) ; 
 int /*<<< orphan*/  FUNC10 (struct super_block*,int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC11 (struct inode*,struct nilfs_inode*) ; 
 int FUNC12 (struct inode*,struct buffer_head**) ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 

int FUNC16(struct super_block *sb, size_t susize,
		      struct nilfs_inode *raw_inode, struct inode **inodep)
{
	struct inode *sufile;
	struct nilfs_sufile_info *sui;
	struct buffer_head *header_bh;
	struct nilfs_sufile_header *header;
	void *kaddr;
	int err;

	if (susize > sb->s_blocksize) {
		FUNC10(sb, KERN_ERR,
			  "too large segment usage size: %zu bytes", susize);
		return -EINVAL;
	} else if (susize < NILFS_MIN_SEGMENT_USAGE_SIZE) {
		FUNC10(sb, KERN_ERR,
			  "too small segment usage size: %zu bytes", susize);
		return -EINVAL;
	}

	sufile = FUNC7(sb, NULL, NILFS_SUFILE_INO);
	if (FUNC14(!sufile))
		return -ENOMEM;
	if (!(sufile->i_state & I_NEW))
		goto out;

	err = FUNC8(sufile, NILFS_MDT_GFP, sizeof(*sui));
	if (err)
		goto failed;

	FUNC9(sufile, susize,
				 sizeof(struct nilfs_sufile_header));

	err = FUNC11(sufile, raw_inode);
	if (err)
		goto failed;

	err = FUNC12(sufile, &header_bh);
	if (err)
		goto failed;

	sui = FUNC0(sufile);
	kaddr = FUNC4(header_bh->b_page);
	header = kaddr + FUNC1(header_bh);
	sui->ncleansegs = FUNC6(header->sh_ncleansegs);
	FUNC5(kaddr);
	FUNC2(header_bh);

	sui->allocmax = FUNC13(sufile) - 1;
	sui->allocmin = 0;

	FUNC15(sufile);
 out:
	*inodep = sufile;
	return 0;
 failed:
	FUNC3(sufile);
	return err;
}