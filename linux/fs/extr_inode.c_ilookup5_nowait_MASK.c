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
struct hlist_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct super_block*,struct hlist_head*,int (*) (struct inode*,void*),void*) ; 
 int FUNC2 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  inode_hash_lock ; 
 struct hlist_head* inode_hashtable ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct inode *FUNC5(struct super_block *sb, unsigned long hashval,
		int (*test)(struct inode *, void *), void *data)
{
	struct hlist_head *head = inode_hashtable + FUNC2(sb, hashval);
	struct inode *inode;

	FUNC3(&inode_hash_lock);
	inode = FUNC1(sb, head, test, data);
	FUNC4(&inode_hash_lock);

	return FUNC0(inode) ? NULL : inode;
}