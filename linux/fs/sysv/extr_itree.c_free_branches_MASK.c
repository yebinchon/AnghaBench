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
typedef  scalar_t__ sysv_zone_t ;
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 scalar_t__* FUNC2 (struct buffer_head*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct buffer_head* FUNC6 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct inode *inode, sysv_zone_t *p, sysv_zone_t *q, int depth)
{
	struct buffer_head * bh;
	struct super_block *sb = inode->i_sb;

	if (depth--) {
		for ( ; p < q ; p++) {
			int block;
			sysv_zone_t nr = *p;
			if (!nr)
				continue;
			*p = 0;
			block = FUNC3(FUNC0(sb), nr);
			bh = FUNC6(sb, block);
			if (!bh)
				continue;
			FUNC8(inode, (sysv_zone_t*)bh->b_data,
					FUNC2(bh), depth);
			FUNC1(bh);
			FUNC7(sb, nr);
			FUNC5(inode);
		}
	} else
		FUNC4(inode, p, q);
}