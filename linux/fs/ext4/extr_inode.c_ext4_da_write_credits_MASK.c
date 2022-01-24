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
typedef  unsigned int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, loff_t pos, unsigned len)
{
	if (FUNC1(FUNC0(inode->i_sb)))
		return 1;

	if (pos + len <= 0x7fffffffULL)
		return 1;

	/* We might need to update the superblock to set LARGE_FILE */
	return 2;
}