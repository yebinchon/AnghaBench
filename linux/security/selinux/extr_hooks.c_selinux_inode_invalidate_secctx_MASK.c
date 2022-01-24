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
struct inode_security_struct {int /*<<< orphan*/  lock; int /*<<< orphan*/  initialized; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LABEL_INVALID ; 
 struct inode_security_struct* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct inode *inode)
{
	struct inode_security_struct *isec = FUNC0(inode);

	FUNC1(&isec->lock);
	isec->initialized = LABEL_INVALID;
	FUNC2(&isec->lock);
}