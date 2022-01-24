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
typedef  unsigned int loff_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void
FUNC3(struct inode *inode, loff_t pos, unsigned len)
{
	loff_t i_size = FUNC0(inode);

	/*
	 * Only truncate newly allocated pages beyoned EOF, even if the
	 * write started inside the existing inode size.
	 */
	if (pos + len > i_size)
		FUNC2(inode, FUNC1(pos, i_size), pos + len);
}