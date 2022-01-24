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
struct buffer_head {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,struct buffer_head*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct buffer_head *di_bh,
			   loff_t pos)
{
	int ret = 0;

	FUNC0(!FUNC3(FUNC1(inode->i_sb)));
	if (pos > FUNC2(inode))
		ret = FUNC4(inode, di_bh, pos);

	return ret;
}