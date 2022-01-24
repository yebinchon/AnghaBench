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
struct nilfs_checkpoint {int /*<<< orphan*/  cp_checkpoints_count; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC3(const struct inode *cpfile,
					 struct buffer_head *bh,
					 void *kaddr,
					 unsigned int n)
{
	struct nilfs_checkpoint *cp = kaddr + FUNC0(bh);
	unsigned int count;

	count = FUNC2(cp->cp_checkpoints_count) + n;
	cp->cp_checkpoints_count = FUNC1(count);
	return count;
}