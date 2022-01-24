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
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_uid; } ;
struct file_lock {TYPE_1__* fl_lmops; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lm_break; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_LEASE ; 
 int EACCES ; 
 int EINVAL ; 
 int ENOLCK ; 
#define  F_RDLCK 130 
#define  F_UNLCK 129 
#define  F_WRLCK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct file*,long,struct file_lock**,void**) ; 
 int FUNC5 (struct file*,void*) ; 
 struct inode* FUNC6 (struct file*) ; 
 int FUNC7 (struct file*,long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct file *filp, long arg, struct file_lock **flp,
			void **priv)
{
	struct inode *inode = FUNC6(filp);
	int error;

	if ((!FUNC8(FUNC3(), inode->i_uid)) && !FUNC2(CAP_LEASE))
		return -EACCES;
	if (!FUNC0(inode->i_mode))
		return -EINVAL;
	error = FUNC7(filp, arg);
	if (error)
		return error;

	switch (arg) {
	case F_UNLCK:
		return FUNC5(filp, *priv);
	case F_RDLCK:
	case F_WRLCK:
		if (!(*flp)->fl_lmops->lm_break) {
			FUNC1(1);
			return -ENOLCK;
		}

		return FUNC4(filp, arg, flp, priv);
	default:
		return -EINVAL;
	}
}