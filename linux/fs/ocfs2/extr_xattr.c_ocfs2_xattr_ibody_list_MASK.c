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
struct ocfs2_xattr_header {int dummy; } ;
struct ocfs2_inode_info {int ip_dyn_features; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_xattr_inline_size; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_blocksize; } ;

/* Variables and functions */
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_XATTR_FL ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct ocfs2_xattr_header*,char*,size_t) ; 

__attribute__((used)) static int FUNC3(struct inode *inode,
				  struct ocfs2_dinode *di,
				  char *buffer,
				  size_t buffer_size)
{
	struct ocfs2_xattr_header *header = NULL;
	struct ocfs2_inode_info *oi = FUNC0(inode);
	int ret = 0;

	if (!(oi->ip_dyn_features & OCFS2_INLINE_XATTR_FL))
		return ret;

	header = (struct ocfs2_xattr_header *)
		 ((void *)di + inode->i_sb->s_blocksize -
		 FUNC1(di->i_xattr_inline_size));

	ret = FUNC2(inode, header, buffer, buffer_size);

	return ret;
}