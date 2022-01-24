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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_blkbits; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int,unsigned int) ; 
 struct buffer_head* FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

__attribute__((used)) static struct buffer_head *FUNC6(struct page *page, struct inode *inode, unsigned int b_state)
{
	FUNC0(!FUNC1(page));

	if (!FUNC5(page))
		FUNC3(page, 1 << FUNC2(inode->i_blkbits),
				     b_state);
	return FUNC4(page);
}