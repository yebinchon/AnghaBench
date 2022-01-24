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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_xattr_ibody_header {int dummy; } ;
struct ext4_inode {int dummy; } ;
struct ext4_iloc {int /*<<< orphan*/  bh; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int s_inode_size; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_STATE_XATTR ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_xattr_ibody_header*) ; 
 struct ext4_xattr_ibody_header* FUNC2 (struct inode*,struct ext4_inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 int FUNC5 (struct inode*,struct ext4_iloc*) ; 
 struct ext4_inode* FUNC6 (struct ext4_iloc*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dentry*,int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC9 (struct inode*,struct ext4_xattr_ibody_header*,void*) ; 

__attribute__((used)) static int
FUNC10(struct dentry *dentry, char *buffer, size_t buffer_size)
{
	struct inode *inode = FUNC4(dentry);
	struct ext4_xattr_ibody_header *header;
	struct ext4_inode *raw_inode;
	struct ext4_iloc iloc;
	void *end;
	int error;

	if (!FUNC7(inode, EXT4_STATE_XATTR))
		return 0;
	error = FUNC5(inode, &iloc);
	if (error)
		return error;
	raw_inode = FUNC6(&iloc);
	header = FUNC2(inode, raw_inode);
	end = (void *)raw_inode + FUNC0(inode->i_sb)->s_inode_size;
	error = FUNC9(inode, header, end);
	if (error)
		goto cleanup;
	error = FUNC8(dentry, FUNC1(header),
					buffer, buffer_size);

cleanup:
	FUNC3(iloc.bh);
	return error;
}