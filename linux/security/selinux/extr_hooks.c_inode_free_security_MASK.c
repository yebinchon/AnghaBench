#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct superblock_security_struct {int /*<<< orphan*/  isec_lock; } ;
struct inode_security_struct {int /*<<< orphan*/  list; } ;
struct inode {TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct superblock_security_struct* s_security; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct inode_security_struct* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct inode *inode)
{
	struct inode_security_struct *isec = FUNC2(inode);
	struct superblock_security_struct *sbsec;

	if (!isec)
		return;
	sbsec = inode->i_sb->s_security;
	/*
	 * As not all inode security structures are in a list, we check for
	 * empty list outside of the lock to make sure that we won't waste
	 * time taking a lock doing nothing.
	 *
	 * The list_del_init() function can be safely called more than once.
	 * It should not be possible for this function to be called with
	 * concurrent list_add(), but for better safety against future changes
	 * in the code, we use list_empty_careful() here.
	 */
	if (!FUNC1(&isec->list)) {
		FUNC3(&sbsec->isec_lock);
		FUNC0(&isec->list);
		FUNC4(&sbsec->isec_lock);
	}
}