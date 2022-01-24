#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ext4_allocation_request {int flags; int len; TYPE_2__* inode; int /*<<< orphan*/  goal; } ;
struct buffer_head {int /*<<< orphan*/  b_blocknr; scalar_t__ b_data; int /*<<< orphan*/  b_size; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_lblk_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_8__ {int /*<<< orphan*/  i_sb; } ;
struct TYPE_7__ {struct buffer_head* bh; int /*<<< orphan*/ * p; void* key; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int ENOMEM ; 
 int EXT4_MB_DELALLOC_RESERVED ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,TYPE_2__*,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,struct buffer_head*) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct ext4_allocation_request*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC14(handle_t *handle,
			     struct ext4_allocation_request *ar,
			     int indirect_blks, ext4_lblk_t *offsets,
			     Indirect *branch)
{
	struct buffer_head *		bh;
	ext4_fsblk_t			b, new_blocks[4];
	__le32				*p;
	int				i, j, err, len = 1;

	for (i = 0; i <= indirect_blks; i++) {
		if (i == indirect_blks) {
			new_blocks[i] = FUNC6(handle, ar, &err);
		} else
			ar->goal = new_blocks[i] = FUNC7(handle,
					ar->inode, ar->goal,
					ar->flags & EXT4_MB_DELALLOC_RESERVED,
					NULL, &err);
		if (err) {
			i--;
			goto failed;
		}
		branch[i].key = FUNC1(new_blocks[i]);
		if (i == 0)
			continue;

		bh = branch[i].bh = FUNC10(ar->inode->i_sb, new_blocks[i-1]);
		if (FUNC12(!bh)) {
			err = -ENOMEM;
			goto failed;
		}
		FUNC8(bh);
		FUNC0(bh, "call get_create_access");
		err = FUNC5(handle, bh);
		if (err) {
			FUNC13(bh);
			goto failed;
		}

		FUNC9(bh->b_data, 0, bh->b_size);
		p = branch[i].p = (__le32 *) bh->b_data + offsets[i];
		b = new_blocks[i];

		if (i == indirect_blks)
			len = ar->len;
		for (j = 0; j < len; j++)
			*p++ = FUNC1(b++);

		FUNC0(bh, "marking uptodate");
		FUNC11(bh);
		FUNC13(bh);

		FUNC0(bh, "call ext4_handle_dirty_metadata");
		err = FUNC4(handle, ar->inode, bh);
		if (err)
			goto failed;
	}
	return 0;
failed:
	for (; i >= 0; i--) {
		/*
		 * We want to ext4_forget() only freshly allocated indirect
		 * blocks.  Buffer for new_blocks[i-1] is at branch[i].bh and
		 * buffer at branch[0].bh is indirect block / inode already
		 * existing before ext4_alloc_branch() was called.
		 */
		if (i > 0 && i != indirect_blks && branch[i].bh)
			FUNC2(handle, 1, ar->inode, branch[i].bh,
				    branch[i].bh->b_blocknr);
		FUNC3(handle, ar->inode, NULL, new_blocks[i],
				 (i == indirect_blks) ? ar->len : 1, 0);
	}
	return err;
}