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
struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct hpfs_inode_info {int /*<<< orphan*/  i_dno; } ;
struct file {int f_pos; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ESPIPE ; 
 int SEEK_DATA ; 
 int SEEK_HOLE ; 
 struct inode* FUNC0 (struct file*) ; 
 scalar_t__ FUNC1 (struct inode*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct quad_buffer_head*) ; 
 scalar_t__ FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct hpfs_inode_info* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 scalar_t__ FUNC9 (struct inode*,int*,struct quad_buffer_head*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static loff_t FUNC11(struct file *filp, loff_t off, int whence)
{
	loff_t new_off = off + (whence == 1 ? filp->f_pos : 0);
	loff_t pos;
	struct quad_buffer_head qbh;
	struct inode *i = FUNC0(filp);
	struct hpfs_inode_info *hpfs_inode = FUNC4(i);
	struct super_block *s = i->i_sb;

	/* Somebody else will have to figure out what to do here */
	if (whence == SEEK_DATA || whence == SEEK_HOLE)
		return -EINVAL;

	FUNC7(i);
	FUNC5(s);

	/*pr_info("dir lseek\n");*/
	if (new_off == 0 || new_off == 1 || new_off == 11 || new_off == 12 || new_off == 13) goto ok;
	pos = ((loff_t) FUNC3(s, hpfs_inode->i_dno) << 4) + 1;
	while (pos != new_off) {
		if (FUNC9(i, &pos, &qbh)) FUNC2(&qbh);
		else goto fail;
		if (pos == 12) goto fail;
	}
	if (FUNC10(FUNC1(i, &filp->f_pos) < 0)) {
		FUNC6(s);
		FUNC8(i);
		return -ENOMEM;
	}
ok:
	filp->f_pos = new_off;
	FUNC6(s);
	FUNC8(i);
	return new_off;
fail:
	/*pr_warn("illegal lseek: %016llx\n", new_off);*/
	FUNC6(s);
	FUNC8(i);
	return -ESPIPE;
}