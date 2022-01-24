#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_size; TYPE_1__* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_lblk_t ;
struct TYPE_7__ {int i_disksize; } ;
struct TYPE_6__ {int s_max_dir_size_kb; } ;
struct TYPE_5__ {int s_blocksize_bits; scalar_t__ s_blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int ENOSPC ; 
 struct buffer_head* FUNC1 (int) ; 
 int /*<<< orphan*/  EXT4_GET_BLOCKS_CREATE ; 
 TYPE_4__* FUNC2 (struct inode*) ; 
 TYPE_2__* FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 struct buffer_head* FUNC6 (int /*<<< orphan*/ *,struct inode*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static struct buffer_head *FUNC10(handle_t *handle,
					struct inode *inode,
					ext4_lblk_t *block)
{
	struct buffer_head *bh;
	int err;

	if (FUNC9(FUNC3(inode->i_sb)->s_max_dir_size_kb &&
		     ((inode->i_size >> 10) >=
		      FUNC3(inode->i_sb)->s_max_dir_size_kb)))
		return FUNC1(-ENOSPC);

	*block = inode->i_size >> inode->i_sb->s_blocksize_bits;

	bh = FUNC6(handle, inode, *block, EXT4_GET_BLOCKS_CREATE);
	if (FUNC4(bh))
		return bh;
	inode->i_size += inode->i_sb->s_blocksize;
	FUNC2(inode)->i_disksize = inode->i_size;
	FUNC0(bh, "get_write_access");
	err = FUNC7(handle, bh);
	if (err) {
		FUNC5(bh);
		FUNC8(inode->i_sb, err);
		return FUNC1(err);
	}
	return bh;
}