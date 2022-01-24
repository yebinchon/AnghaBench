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
struct super_block {size_t s_blocksize; } ;
struct nilfs_inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mi_sem; } ;
struct nilfs_dat_info {int /*<<< orphan*/  shadow; int /*<<< orphan*/  palloc_cache; TYPE_1__ mi; } ;
struct lock_class_key {int dummy; } ;
struct inode {int i_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int I_NEW ; 
 int /*<<< orphan*/  KERN_ERR ; 
 struct nilfs_dat_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  NILFS_DAT_INO ; 
 int /*<<< orphan*/  NILFS_MDT_GFP ; 
 size_t NILFS_MIN_DAT_ENTRY_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct lock_class_key*) ; 
 struct inode* FUNC3 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC7 (struct inode*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct inode*,struct nilfs_inode*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 

int FUNC12(struct super_block *sb, size_t entry_size,
		   struct nilfs_inode *raw_inode, struct inode **inodep)
{
	static struct lock_class_key dat_lock_key;
	struct inode *dat;
	struct nilfs_dat_info *di;
	int err;

	if (entry_size > sb->s_blocksize) {
		FUNC6(sb, KERN_ERR, "too large DAT entry size: %zu bytes",
			  entry_size);
		return -EINVAL;
	} else if (entry_size < NILFS_MIN_DAT_ENTRY_SIZE) {
		FUNC6(sb, KERN_ERR, "too small DAT entry size: %zu bytes",
			  entry_size);
		return -EINVAL;
	}

	dat = FUNC3(sb, NULL, NILFS_DAT_INO);
	if (FUNC10(!dat))
		return -ENOMEM;
	if (!(dat->i_state & I_NEW))
		goto out;

	err = FUNC4(dat, NILFS_MDT_GFP, sizeof(*di));
	if (err)
		goto failed;

	err = FUNC7(dat, entry_size);
	if (err)
		goto failed;

	di = FUNC0(dat);
	FUNC2(&di->mi.mi_sem, &dat_lock_key);
	FUNC8(dat, &di->palloc_cache);
	FUNC5(dat, &di->shadow);

	err = FUNC9(dat, raw_inode);
	if (err)
		goto failed;

	FUNC11(dat);
 out:
	*inodep = dat;
	return 0;
 failed:
	FUNC1(dat);
	return err;
}