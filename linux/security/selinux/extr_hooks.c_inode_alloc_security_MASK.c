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
typedef  int /*<<< orphan*/  u32 ;
struct inode_security_struct {int /*<<< orphan*/  initialized; int /*<<< orphan*/  task_sid; int /*<<< orphan*/  sclass; int /*<<< orphan*/  sid; struct inode* inode; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LABEL_INVALID ; 
 int /*<<< orphan*/  SECCLASS_FILE ; 
 int /*<<< orphan*/  SECINITSID_UNLABELED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct inode_security_struct* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode)
{
	struct inode_security_struct *isec = FUNC2(inode);
	u32 sid = FUNC1();

	FUNC3(&isec->lock);
	FUNC0(&isec->list);
	isec->inode = inode;
	isec->sid = SECINITSID_UNLABELED;
	isec->sclass = SECCLASS_FILE;
	isec->task_sid = sid;
	isec->initialized = LABEL_INVALID;

	return 0;
}