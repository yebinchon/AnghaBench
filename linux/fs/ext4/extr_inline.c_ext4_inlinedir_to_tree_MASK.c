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
struct inode {unsigned int i_ino; int /*<<< orphan*/  i_sb; } ;
struct fscrypt_str {int len; int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;
struct ext4_iloc {int /*<<< orphan*/  bh; } ;
struct ext4_dir_entry_2 {scalar_t__ inode; int name_len; int /*<<< orphan*/  name; void* rec_len; } ;
struct dx_hash_info {scalar_t__ hash; scalar_t__ minor_hash; } ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;
typedef  scalar_t__ __u32 ;
struct TYPE_2__ {int /*<<< orphan*/  xattr_sem; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int EXT4_INLINE_DOTDOT_OFFSET ; 
 int EXT4_INLINE_DOTDOT_SIZE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  S_IFDIR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct inode*,struct file*,struct ext4_dir_entry_2*,int /*<<< orphan*/ ,void*,int,int) ; 
 int FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct file*,scalar_t__,scalar_t__,struct ext4_dir_entry_2*,struct fscrypt_str*) ; 
 int FUNC10 (struct inode*,void*,int,struct ext4_iloc*) ; 
 scalar_t__ FUNC11 (void*,int) ; 
 void* FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct ext4_dir_entry_2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int /*<<< orphan*/ ,int,struct dx_hash_info*) ; 
 struct inode* FUNC15 (struct file*) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 void* FUNC17 (int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

int FUNC21(struct file *dir_file,
			   struct inode *dir, ext4_lblk_t block,
			   struct dx_hash_info *hinfo,
			   __u32 start_hash, __u32 start_minor_hash,
			   int *has_inline_data)
{
	int err = 0, count = 0;
	unsigned int parent_ino;
	int pos;
	struct ext4_dir_entry_2 *de;
	struct inode *inode = FUNC15(dir_file);
	int ret, inline_size = 0;
	struct ext4_iloc iloc;
	void *dir_buf = NULL;
	struct ext4_dir_entry_2 fake;
	struct fscrypt_str tmp_str;

	ret = FUNC7(inode, &iloc);
	if (ret)
		return ret;

	FUNC4(&FUNC1(inode)->xattr_sem);
	if (!FUNC8(inode)) {
		FUNC20(&FUNC1(inode)->xattr_sem);
		*has_inline_data = 0;
		goto out;
	}

	inline_size = FUNC6(inode);
	dir_buf = FUNC17(inline_size, GFP_NOFS);
	if (!dir_buf) {
		ret = -ENOMEM;
		FUNC20(&FUNC1(inode)->xattr_sem);
		goto out;
	}

	ret = FUNC10(inode, dir_buf, inline_size, &iloc);
	FUNC20(&FUNC1(inode)->xattr_sem);
	if (ret < 0)
		goto out;

	pos = 0;
	parent_ino = FUNC18(((struct ext4_dir_entry_2 *)dir_buf)->inode);
	while (pos < inline_size) {
		/*
		 * As inlined dir doesn't store any information about '.' and
		 * only the inode number of '..' is stored, we have to handle
		 * them differently.
		 */
		if (pos == 0) {
			fake.inode = FUNC3(inode->i_ino);
			fake.name_len = 1;
			FUNC19(fake.name, ".");
			fake.rec_len = FUNC12(
						FUNC0(fake.name_len),
						inline_size);
			FUNC13(inode->i_sb, &fake, S_IFDIR);
			de = &fake;
			pos = EXT4_INLINE_DOTDOT_OFFSET;
		} else if (pos == EXT4_INLINE_DOTDOT_OFFSET) {
			fake.inode = FUNC3(parent_ino);
			fake.name_len = 2;
			FUNC19(fake.name, "..");
			fake.rec_len = FUNC12(
						FUNC0(fake.name_len),
						inline_size);
			FUNC13(inode->i_sb, &fake, S_IFDIR);
			de = &fake;
			pos = EXT4_INLINE_DOTDOT_SIZE;
		} else {
			de = (struct ext4_dir_entry_2 *)(dir_buf + pos);
			pos += FUNC11(de->rec_len, inline_size);
			if (FUNC5(inode, dir_file, de,
					 iloc.bh, dir_buf,
					 inline_size, pos)) {
				ret = count;
				goto out;
			}
		}

		FUNC14(dir, de->name, de->name_len, hinfo);
		if ((hinfo->hash < start_hash) ||
		    ((hinfo->hash == start_hash) &&
		     (hinfo->minor_hash < start_minor_hash)))
			continue;
		if (de->inode == 0)
			continue;
		tmp_str.name = de->name;
		tmp_str.len = de->name_len;
		err = FUNC9(dir_file, hinfo->hash,
					      hinfo->minor_hash, de, &tmp_str);
		if (err) {
			ret = err;
			goto out;
		}
		count++;
	}
	ret = count;
out:
	FUNC16(dir_buf);
	FUNC2(iloc.bh);
	return ret;
}