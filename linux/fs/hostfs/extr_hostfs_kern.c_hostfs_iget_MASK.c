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
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (struct super_block*) ; 

__attribute__((used)) static struct inode *FUNC2(struct super_block *sb)
{
	struct inode *inode = FUNC1(sb);
	if (!inode)
		return FUNC0(-ENOMEM);
	return inode;
}