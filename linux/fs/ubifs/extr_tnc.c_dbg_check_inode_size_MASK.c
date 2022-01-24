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
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {TYPE_1__* zbranch; } ;
struct ubifs_info {int /*<<< orphan*/  tnc_mutex; } ;
struct inode {scalar_t__ i_ino; int /*<<< orphan*/  i_mode; } ;
typedef  int loff_t ;
struct TYPE_2__ {union ubifs_key key; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int UBIFS_BLOCK_SHIFT ; 
 int /*<<< orphan*/  UBIFS_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct ubifs_info*,union ubifs_key*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,union ubifs_key*,scalar_t__) ; 
 unsigned int FUNC5 (struct ubifs_info*,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,union ubifs_key*,union ubifs_key*,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct ubifs_info*,struct ubifs_znode**,int*) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ubifs_info*,struct inode const*) ; 
 int /*<<< orphan*/  FUNC12 (struct ubifs_info*,char*,unsigned long,int,int) ; 
 int FUNC13 (struct ubifs_info*,union ubifs_key*,struct ubifs_znode**,int*) ; 

int FUNC14(struct ubifs_info *c, const struct inode *inode,
			 loff_t size)
{
	int err, n;
	union ubifs_key from_key, to_key, *key;
	struct ubifs_znode *znode;
	unsigned int block;

	if (!FUNC0(inode->i_mode))
		return 0;
	if (!FUNC2(c))
		return 0;

	block = (size + UBIFS_BLOCK_SIZE - 1) >> UBIFS_BLOCK_SHIFT;
	FUNC1(c, &from_key, inode->i_ino, block);
	FUNC4(c, &to_key, inode->i_ino);

	FUNC7(&c->tnc_mutex);
	err = FUNC13(c, &from_key, &znode, &n);
	if (err < 0)
		goto out_unlock;

	if (err) {
		key = &from_key;
		goto out_dump;
	}

	err = FUNC9(c, &znode, &n);
	if (err == -ENOENT) {
		err = 0;
		goto out_unlock;
	}
	if (err < 0)
		goto out_unlock;

	FUNC10(c, err == 0);
	key = &znode->zbranch[n].key;
	if (!FUNC6(c, key, &from_key, &to_key))
		goto out_unlock;

out_dump:
	block = FUNC5(c, key);
	FUNC12(c, "inode %lu has size %lld, but there are data at offset %lld",
		  (unsigned long)inode->i_ino, size,
		  ((loff_t)block) << UBIFS_BLOCK_SHIFT);
	FUNC8(&c->tnc_mutex);
	FUNC11(c, inode);
	FUNC3();
	return -EINVAL;

out_unlock:
	FUNC8(&c->tnc_mutex);
	return err;
}