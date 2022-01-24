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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  scalar_t__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__* FUNC1 (struct buffer_head*) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,unsigned long) ; 
 struct buffer_head* FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct inode *inode, block_t *p, block_t *q, int depth)
{
	struct buffer_head * bh;
	unsigned long nr;

	if (depth--) {
		for ( ; p < q ; p++) {
			nr = FUNC2(*p);
			if (!nr)
				continue;
			*p = 0;
			bh = FUNC6(inode->i_sb, nr);
			if (!bh)
				continue;
			FUNC7(inode, (block_t*)bh->b_data,
				      FUNC1(bh), depth);
			FUNC0(bh);
			FUNC5(inode, nr);
			FUNC4(inode);
		}
	} else
		FUNC3(inode, p, q);
}