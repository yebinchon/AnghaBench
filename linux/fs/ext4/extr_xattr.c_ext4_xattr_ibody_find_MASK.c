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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_xattr_info {int /*<<< orphan*/  name; int /*<<< orphan*/  name_index; } ;
struct ext4_xattr_ibody_header {int dummy; } ;
struct TYPE_4__ {int not_found; void* end; int /*<<< orphan*/  here; int /*<<< orphan*/  first; int /*<<< orphan*/  base; } ;
struct ext4_xattr_ibody_find {TYPE_1__ s; int /*<<< orphan*/  iloc; } ;
struct ext4_inode {int dummy; } ;
struct TYPE_6__ {scalar_t__ i_extra_isize; } ;
struct TYPE_5__ {int s_inode_size; } ;

/* Variables and functions */
 int ENODATA ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT4_STATE_XATTR ; 
 int /*<<< orphan*/  FUNC2 (struct ext4_xattr_ibody_header*) ; 
 struct ext4_xattr_ibody_header* FUNC3 (struct inode*,struct ext4_inode*) ; 
 struct ext4_inode* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,struct ext4_xattr_ibody_header*,void*) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(struct inode *inode, struct ext4_xattr_info *i,
			  struct ext4_xattr_ibody_find *is)
{
	struct ext4_xattr_ibody_header *header;
	struct ext4_inode *raw_inode;
	int error;

	if (FUNC0(inode)->i_extra_isize == 0)
		return 0;
	raw_inode = FUNC4(&is->iloc);
	header = FUNC3(inode, raw_inode);
	is->s.base = is->s.first = FUNC2(header);
	is->s.here = is->s.first;
	is->s.end = (void *)raw_inode + FUNC1(inode->i_sb)->s_inode_size;
	if (FUNC5(inode, EXT4_STATE_XATTR)) {
		error = FUNC6(inode, header, is->s.end);
		if (error)
			return error;
		/* Find the named attribute. */
		error = FUNC7(inode, &is->s.here, is->s.end,
					 i->name_index, i->name, 0);
		if (error && error != -ENODATA)
			return error;
		is->s.not_found = error;
	}
	return 0;
}