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
struct inode {int dummy; } ;
struct f2fs_inode_info {int /*<<< orphan*/  flags; } ;
struct f2fs_inode {int i_inline; } ;

/* Variables and functions */
 int F2FS_DATA_EXIST ; 
 int F2FS_EXTRA_ATTR ; 
 struct f2fs_inode_info* FUNC0 (struct inode*) ; 
 int F2FS_INLINE_DATA ; 
 int F2FS_INLINE_DENTRY ; 
 int F2FS_INLINE_DOTS ; 
 int F2FS_INLINE_XATTR ; 
 int F2FS_PIN_FILE ; 
 int /*<<< orphan*/  FI_DATA_EXIST ; 
 int /*<<< orphan*/  FI_EXTRA_ATTR ; 
 int /*<<< orphan*/  FI_INLINE_DATA ; 
 int /*<<< orphan*/  FI_INLINE_DENTRY ; 
 int /*<<< orphan*/  FI_INLINE_DOTS ; 
 int /*<<< orphan*/  FI_INLINE_XATTR ; 
 int /*<<< orphan*/  FI_PIN_FILE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct inode *inode, struct f2fs_inode *ri)
{
	struct f2fs_inode_info *fi = FUNC0(inode);

	if (ri->i_inline & F2FS_INLINE_XATTR)
		FUNC1(FI_INLINE_XATTR, &fi->flags);
	if (ri->i_inline & F2FS_INLINE_DATA)
		FUNC1(FI_INLINE_DATA, &fi->flags);
	if (ri->i_inline & F2FS_INLINE_DENTRY)
		FUNC1(FI_INLINE_DENTRY, &fi->flags);
	if (ri->i_inline & F2FS_DATA_EXIST)
		FUNC1(FI_DATA_EXIST, &fi->flags);
	if (ri->i_inline & F2FS_INLINE_DOTS)
		FUNC1(FI_INLINE_DOTS, &fi->flags);
	if (ri->i_inline & F2FS_EXTRA_ATTR)
		FUNC1(FI_EXTRA_ATTR, &fi->flags);
	if (ri->i_inline & F2FS_PIN_FILE)
		FUNC1(FI_PIN_FILE, &fi->flags);
}