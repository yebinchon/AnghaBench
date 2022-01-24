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
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ __le32 ;
struct TYPE_2__ {int s_blocksize; } ;

/* Variables and functions */
 int EXT4_FREE_BLOCKS_FORGET ; 
 int EXT4_FREE_BLOCKS_METADATA ; 
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 struct buffer_head* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC7(handle_t *handle,
				struct inode *inode, __le32 i_data)
{
	int i;
	__le32 *tmp_idata;
	struct buffer_head *bh;
	unsigned long max_entries = inode->i_sb->s_blocksize >> 2;

	bh = FUNC3(inode->i_sb, FUNC5(i_data), 0);
	if (FUNC0(bh))
		return FUNC1(bh);

	tmp_idata = (__le32 *)bh->b_data;
	for (i = 0; i < max_entries; i++) {
		if (tmp_idata[i]) {
			FUNC4(handle, inode);
			FUNC2(handle, inode, NULL,
					 FUNC5(tmp_idata[i]), 1,
					 EXT4_FREE_BLOCKS_METADATA |
					 EXT4_FREE_BLOCKS_FORGET);
		}
	}
	FUNC6(bh);
	FUNC4(handle, inode);
	FUNC2(handle, inode, NULL, FUNC5(i_data), 1,
			 EXT4_FREE_BLOCKS_METADATA |
			 EXT4_FREE_BLOCKS_FORGET);
	return 0;
}