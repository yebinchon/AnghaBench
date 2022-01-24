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
 struct inode* FUNC0 (struct super_block*,unsigned long,int (*) (struct inode*,void*),void*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

struct inode *FUNC5(struct super_block *sb, unsigned long hashval,
		int (*test)(struct inode *, void *), void *data)
{
	struct inode *inode;
again:
	inode = FUNC0(sb, hashval, test, data);
	if (inode) {
		FUNC4(inode);
		if (FUNC3(FUNC1(inode))) {
			FUNC2(inode);
			goto again;
		}
	}
	return inode;
}