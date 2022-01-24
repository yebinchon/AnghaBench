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
struct nilfs_bmap {struct inode* b_inode; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct nilfs_bmap *bmap,
				     const char *fname, int err)
{
	struct inode *inode = bmap->b_inode;

	if (err == -EINVAL) {
		FUNC0(inode->i_sb, fname,
			      "broken bmap (inode number=%lu)", inode->i_ino);
		err = -EIO;
	}
	return err;
}