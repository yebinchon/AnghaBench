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
struct ext4_inode_info {scalar_t__ i_inline_off; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int ENOSPC ; 
 struct ext4_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXT4_STATE_MAY_INLINE_DATA ; 
 int FUNC1 (int /*<<< orphan*/ *,struct inode*,unsigned int) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int*) ; 

__attribute__((used)) static int FUNC7(handle_t *handle, struct inode *inode,
				    unsigned int len)
{
	int ret, size, no_expand;
	struct ext4_inode_info *ei = FUNC0(inode);

	if (!FUNC3(inode, EXT4_STATE_MAY_INLINE_DATA))
		return -ENOSPC;

	size = FUNC2(inode);
	if (size < len)
		return -ENOSPC;

	FUNC5(inode, &no_expand);

	if (ei->i_inline_off)
		ret = FUNC4(handle, inode, len);
	else
		ret = FUNC1(handle, inode, len);

	FUNC6(inode, &no_expand);
	return ret;
}