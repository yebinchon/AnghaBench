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
struct kcov {int /*<<< orphan*/  lock; int /*<<< orphan*/  refcount; int /*<<< orphan*/  mode; } ;
struct inode {int dummy; } ;
struct file {struct kcov* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KCOV_MODE_DISABLED ; 
 struct kcov* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filep)
{
	struct kcov *kcov;

	kcov = FUNC0(sizeof(*kcov), GFP_KERNEL);
	if (!kcov)
		return -ENOMEM;
	kcov->mode = KCOV_MODE_DISABLED;
	FUNC2(&kcov->refcount, 1);
	FUNC3(&kcov->lock);
	filep->private_data = kcov;
	return FUNC1(inode, filep);
}