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
struct super_block {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 int /*<<< orphan*/  ENOMEM ; 
 int HZ ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct inode* FUNC3 (struct super_block*,unsigned long) ; 

struct inode *FUNC4(struct super_block *sb, unsigned long ino)
{
	struct inode *inode;
retry:
	inode = FUNC3(sb, ino);
	if (FUNC0(inode)) {
		if (FUNC1(inode) == -ENOMEM) {
			FUNC2(BLK_RW_ASYNC, HZ/50);
			goto retry;
		}
	}
	return inode;
}