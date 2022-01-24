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
struct xattr_handler {int flags; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct f2fs_sb_info {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 struct f2fs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
#define  F2FS_XATTR_INDEX_SECURITY 130 
#define  F2FS_XATTR_INDEX_TRUSTED 129 
#define  F2FS_XATTR_INDEX_USER 128 
 int /*<<< orphan*/  XATTR_USER ; 
 int FUNC1 (struct inode*,int,char const*,void const*,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct xattr_handler *handler,
		struct dentry *unused, struct inode *inode,
		const char *name, const void *value,
		size_t size, int flags)
{
	struct f2fs_sb_info *sbi = FUNC0(inode->i_sb);

	switch (handler->flags) {
	case F2FS_XATTR_INDEX_USER:
		if (!FUNC2(sbi, XATTR_USER))
			return -EOPNOTSUPP;
		break;
	case F2FS_XATTR_INDEX_TRUSTED:
	case F2FS_XATTR_INDEX_SECURITY:
		break;
	default:
		return -EINVAL;
	}
	return FUNC1(inode, handler->flags, name,
					value, size, NULL, flags);
}