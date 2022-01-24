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
struct super_block {int dummy; } ;
struct msdos_sb_info {int cluster_size; int cluster_bits; } ;
struct inode {int i_blocks; int /*<<< orphan*/  i_mode; struct super_block* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  int loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 long EOPNOTSUPP ; 
 int FALLOC_FL_KEEP_SIZE ; 
 struct msdos_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,int) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

__attribute__((used)) static long FUNC7(struct file *file, int mode,
			  loff_t offset, loff_t len)
{
	int nr_cluster; /* Number of clusters to be allocated */
	loff_t mm_bytes; /* Number of bytes to be allocated for file */
	loff_t ondisksize; /* block aligned on-disk size in bytes*/
	struct inode *inode = file->f_mapping->host;
	struct super_block *sb = inode->i_sb;
	struct msdos_sb_info *sbi = FUNC0(sb);
	int err = 0;

	/* No support for hole punch or other fallocate flags. */
	if (mode & ~FALLOC_FL_KEEP_SIZE)
		return -EOPNOTSUPP;

	/* No support for dir */
	if (!FUNC1(inode->i_mode))
		return -EOPNOTSUPP;

	FUNC5(inode);
	if (mode & FALLOC_FL_KEEP_SIZE) {
		ondisksize = inode->i_blocks << 9;
		if ((offset + len) <= ondisksize)
			goto error;

		/* First compute the number of clusters to be allocated */
		mm_bytes = offset + len - ondisksize;
		nr_cluster = (mm_bytes + (sbi->cluster_size - 1)) >>
			sbi->cluster_bits;

		/* Start the allocation.We are not zeroing out the clusters */
		while (nr_cluster-- > 0) {
			err = FUNC2(inode);
			if (err)
				goto error;
		}
	} else {
		if ((offset + len) <= FUNC4(inode))
			goto error;

		/* This is just an expanding truncate */
		err = FUNC3(inode, (offset + len));
	}

error:
	FUNC6(inode);
	return err;
}