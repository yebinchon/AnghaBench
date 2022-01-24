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
struct inode {int i_blkbits; TYPE_1__* i_sb; } ;
struct ext4_map_blocks {unsigned long m_lblk; int m_len; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {int s_blocksize; } ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,char*) ; 
 int /*<<< orphan*/  EXT4_GET_BLOCKS_CREATE ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 struct buffer_head* FUNC5 (int /*<<< orphan*/ *,struct inode*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct inode*,struct ext4_map_blocks*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,void const*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC17(handle_t *handle, struct inode *ea_inode,
				  const void *buf, int bufsize)
{
	struct buffer_head *bh = NULL;
	unsigned long block = 0;
	int blocksize = ea_inode->i_sb->s_blocksize;
	int max_blocks = (bufsize + blocksize - 1) >> ea_inode->i_blkbits;
	int csize, wsize = 0;
	int ret = 0;
	int retries = 0;

retry:
	while (ret >= 0 && ret < max_blocks) {
		struct ext4_map_blocks map;
		map.m_lblk = block += ret;
		map.m_len = max_blocks -= ret;

		ret = FUNC8(handle, ea_inode, &map,
				      EXT4_GET_BLOCKS_CREATE);
		if (ret <= 0) {
			FUNC9(handle, ea_inode);
			if (ret == -ENOSPC &&
			    FUNC10(ea_inode->i_sb, &retries)) {
				ret = 0;
				goto retry;
			}
			break;
		}
	}

	if (ret < 0)
		return ret;

	block = 0;
	while (wsize < bufsize) {
		if (bh != NULL)
			FUNC4(bh);
		csize = (bufsize - wsize) > blocksize ? blocksize :
								bufsize - wsize;
		bh = FUNC5(handle, ea_inode, block, 0);
		if (FUNC1(bh))
			return FUNC2(bh);
		if (!bh) {
			FUNC3(1);
			FUNC0(ea_inode,
					 "ext4_getblk() return bh = NULL");
			return -EFSCORRUPTED;
		}
		ret = FUNC7(handle, bh);
		if (ret)
			goto out;

		FUNC15(bh->b_data, buf, csize);
		FUNC16(bh);
		FUNC6(handle, ea_inode, bh);

		buf += csize;
		wsize += csize;
		block += 1;
	}

	FUNC13(ea_inode);
	FUNC12(ea_inode, wsize);
	FUNC11(ea_inode, wsize);
	FUNC14(ea_inode);

	FUNC9(handle, ea_inode);

out:
	FUNC4(bh);

	return ret;
}