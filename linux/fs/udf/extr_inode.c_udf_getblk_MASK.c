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
typedef  int /*<<< orphan*/  udf_pblk_t ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {int b_blocknr; int /*<<< orphan*/  b_data; scalar_t__ b_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int FUNC7 (struct inode*,int /*<<< orphan*/ ,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 

__attribute__((used)) static struct buffer_head *FUNC9(struct inode *inode, udf_pblk_t block,
				      int create, int *err)
{
	struct buffer_head *bh;
	struct buffer_head dummy;

	dummy.b_state = 0;
	dummy.b_blocknr = -1000;
	*err = FUNC7(inode, block, &dummy, create);
	if (!*err && FUNC0(&dummy)) {
		bh = FUNC5(inode->i_sb, dummy.b_blocknr);
		if (FUNC1(&dummy)) {
			FUNC2(bh);
			FUNC4(bh->b_data, 0x00, inode->i_sb->s_blocksize);
			FUNC6(bh);
			FUNC8(bh);
			FUNC3(bh, inode);
		}
		return bh;
	}

	return NULL;
}