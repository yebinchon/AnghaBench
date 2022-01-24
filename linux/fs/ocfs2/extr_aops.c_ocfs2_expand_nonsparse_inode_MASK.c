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
struct ocfs2_write_ctxt {int /*<<< orphan*/  w_first_new_cpos; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
typedef  unsigned int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (struct inode*,struct buffer_head*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *inode,
					struct buffer_head *di_bh,
					loff_t pos, unsigned len,
					struct ocfs2_write_ctxt *wc)
{
	int ret;
	loff_t newsize = pos + len;

	FUNC0(FUNC6(FUNC1(inode->i_sb)));

	if (newsize <= FUNC2(inode))
		return 0;

	ret = FUNC5(inode, di_bh, newsize, pos);
	if (ret)
		FUNC3(ret);

	/* There is no wc if this is call from direct. */
	if (wc)
		wc->w_first_new_cpos =
			FUNC4(inode->i_sb, FUNC2(inode));

	return ret;
}