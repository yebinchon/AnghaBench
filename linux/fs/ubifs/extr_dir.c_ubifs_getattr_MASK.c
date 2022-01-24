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
typedef  int /*<<< orphan*/  u32 ;
struct ubifs_inode {int flags; int ui_size; int xattr_size; int /*<<< orphan*/  ui_mutex; } ;
struct path {int /*<<< orphan*/  dentry; } ;
struct kstat {int attributes; int attributes_mask; int size; int blocks; int /*<<< orphan*/  blksize; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;
typedef  int loff_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int STATX_ATTR_APPEND ; 
 int STATX_ATTR_COMPRESSED ; 
 int STATX_ATTR_ENCRYPTED ; 
 int STATX_ATTR_IMMUTABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int UBIFS_APPEND_FL ; 
 int /*<<< orphan*/  UBIFS_BLOCK_SIZE ; 
 int UBIFS_COMPR_FL ; 
 int UBIFS_CRYPT_FL ; 
 int UBIFS_IMMUTABLE_FL ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct ubifs_inode* FUNC6 (struct inode*) ; 

int FUNC7(const struct path *path, struct kstat *stat,
		  u32 request_mask, unsigned int flags)
{
	loff_t size;
	struct inode *inode = FUNC2(path->dentry);
	struct ubifs_inode *ui = FUNC6(inode);

	FUNC4(&ui->ui_mutex);

	if (ui->flags & UBIFS_APPEND_FL)
		stat->attributes |= STATX_ATTR_APPEND;
	if (ui->flags & UBIFS_COMPR_FL)
		stat->attributes |= STATX_ATTR_COMPRESSED;
	if (ui->flags & UBIFS_CRYPT_FL)
		stat->attributes |= STATX_ATTR_ENCRYPTED;
	if (ui->flags & UBIFS_IMMUTABLE_FL)
		stat->attributes |= STATX_ATTR_IMMUTABLE;

	stat->attributes_mask |= (STATX_ATTR_APPEND |
				STATX_ATTR_COMPRESSED |
				STATX_ATTR_ENCRYPTED |
				STATX_ATTR_IMMUTABLE);

	FUNC3(inode, stat);
	stat->blksize = UBIFS_BLOCK_SIZE;
	stat->size = ui->ui_size;

	/*
	 * Unfortunately, the 'stat()' system call was designed for block
	 * device based file systems, and it is not appropriate for UBIFS,
	 * because UBIFS does not have notion of "block". For example, it is
	 * difficult to tell how many block a directory takes - it actually
	 * takes less than 300 bytes, but we have to round it to block size,
	 * which introduces large mistake. This makes utilities like 'du' to
	 * report completely senseless numbers. This is the reason why UBIFS
	 * goes the same way as JFFS2 - it reports zero blocks for everything
	 * but regular files, which makes more sense than reporting completely
	 * wrong sizes.
	 */
	if (FUNC1(inode->i_mode)) {
		size = ui->xattr_size;
		size += stat->size;
		size = FUNC0(size, UBIFS_BLOCK_SIZE);
		/*
		 * Note, user-space expects 512-byte blocks count irrespectively
		 * of what was reported in @stat->size.
		 */
		stat->blocks = size >> 9;
	} else
		stat->blocks = 0;
	FUNC5(&ui->ui_mutex);
	return 0;
}