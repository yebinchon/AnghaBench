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
typedef  int /*<<< orphan*/  umode_t ;
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 struct inode* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct inode *FUNC2(struct super_block *sb, umode_t mode, dev_t rdev)
{
	struct inode *inode;

	inode = FUNC0(sb);
	if (inode)
		FUNC1(inode, mode, rdev, 0, 0);

	return inode;
}