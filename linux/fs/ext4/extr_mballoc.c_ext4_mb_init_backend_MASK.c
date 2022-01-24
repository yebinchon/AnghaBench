#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int /*<<< orphan*/  s_blocksize_bits; } ;
struct kmem_cache {int dummy; } ;
struct ext4_sb_info {size_t s_group_info_size; int /*<<< orphan*/ * s_group_info; TYPE_1__* s_buddy_cache; } ;
struct ext4_group_desc {int dummy; } ;
typedef  size_t ext4_group_t ;
struct TYPE_6__ {scalar_t__ i_disksize; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EXT4_BAD_INO ; 
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 struct ext4_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct ext4_group_desc* FUNC3 (struct super_block*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,size_t) ; 
 size_t FUNC5 (struct super_block*) ; 
 scalar_t__ FUNC6 (struct super_block*,size_t,struct ext4_group_desc*) ; 
 int FUNC7 (struct super_block*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ,char*,...) ; 
 struct kmem_cache* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC14 (struct super_block*) ; 

__attribute__((used)) static int FUNC15(struct super_block *sb)
{
	ext4_group_t ngroups = FUNC5(sb);
	ext4_group_t i;
	struct ext4_sb_info *sbi = FUNC1(sb);
	int err;
	struct ext4_group_desc *desc;
	struct kmem_cache *cachep;

	err = FUNC7(sb, ngroups);
	if (err)
		return err;

	sbi->s_buddy_cache = FUNC14(sb);
	if (sbi->s_buddy_cache == NULL) {
		FUNC8(sb, KERN_ERR, "can't get new inode");
		goto err_freesgi;
	}
	/* To avoid potentially colliding with an valid on-disk inode number,
	 * use EXT4_BAD_INO for the buddy cache inode number.  This inode is
	 * not in the inode hash, so it should never be found by iget(), but
	 * this will avoid confusion if it ever shows up during debugging. */
	sbi->s_buddy_cache->i_ino = EXT4_BAD_INO;
	FUNC0(sbi->s_buddy_cache)->i_disksize = 0;
	for (i = 0; i < ngroups; i++) {
		FUNC2();
		desc = FUNC3(sb, i, NULL);
		if (desc == NULL) {
			FUNC8(sb, KERN_ERR, "can't read descriptor %u", i);
			goto err_freebuddy;
		}
		if (FUNC6(sb, i, desc) != 0)
			goto err_freebuddy;
	}

	return 0;

err_freebuddy:
	cachep = FUNC9(sb->s_blocksize_bits);
	while (i-- > 0)
		FUNC12(cachep, FUNC4(sb, i));
	i = sbi->s_group_info_size;
	while (i-- > 0)
		FUNC11(sbi->s_group_info[i]);
	FUNC10(sbi->s_buddy_cache);
err_freesgi:
	FUNC13(sbi->s_group_info);
	return -ENOMEM;
}