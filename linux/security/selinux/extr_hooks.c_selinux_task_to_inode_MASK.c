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
struct task_struct {int dummy; } ;
struct inode_security_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  initialized; int /*<<< orphan*/  sid; int /*<<< orphan*/  sclass; } ;
struct inode {int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  LABEL_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode_security_struct* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

__attribute__((used)) static void FUNC5(struct task_struct *p,
				  struct inode *inode)
{
	struct inode_security_struct *isec = FUNC1(inode);
	u32 sid = FUNC4(p);

	FUNC2(&isec->lock);
	isec->sclass = FUNC0(inode->i_mode);
	isec->sid = sid;
	isec->initialized = LABEL_INITIALIZED;
	FUNC3(&isec->lock);
}