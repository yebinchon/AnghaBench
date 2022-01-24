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
struct buffer_head {int dummy; } ;
typedef  scalar_t__ ext4_lblk_t ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct buffer_head*) ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int REQ_PRIO ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 struct buffer_head* FUNC5 (int /*<<< orphan*/ *,struct inode*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 

int FUNC8(struct inode *inode, ext4_lblk_t block, int bh_count,
		     bool wait, struct buffer_head **bhs)
{
	int i, err;

	for (i = 0; i < bh_count; i++) {
		bhs[i] = FUNC5(NULL, inode, block + i, 0 /* map_flags */);
		if (FUNC0(bhs[i])) {
			err = FUNC1(bhs[i]);
			bh_count = i;
			goto out_brelse;
		}
	}

	for (i = 0; i < bh_count; i++)
		/* Note that NULL bhs[i] is valid because of holes. */
		if (bhs[i] && !FUNC4(bhs[i]))
			FUNC6(REQ_OP_READ, REQ_META | REQ_PRIO, 1,
				    &bhs[i]);

	if (!wait)
		return 0;

	for (i = 0; i < bh_count; i++)
		if (bhs[i])
			FUNC7(bhs[i]);

	for (i = 0; i < bh_count; i++) {
		if (bhs[i] && !FUNC3(bhs[i])) {
			err = -EIO;
			goto out_brelse;
		}
	}
	return 0;

out_brelse:
	for (i = 0; i < bh_count; i++) {
		FUNC2(bhs[i]);
		bhs[i] = NULL;
	}
	return err;
}