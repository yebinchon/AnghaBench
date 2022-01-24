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
struct snd_timer_user {int ticks; int /*<<< orphan*/  ioctl_lock; int /*<<< orphan*/  qchange_sleep; int /*<<< orphan*/  qlock; } ;
struct inode {int dummy; } ;
struct file {struct snd_timer_user* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_timer_user*) ; 
 struct snd_timer_user* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct snd_timer_user*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct snd_timer_user *tu;
	int err;

	err = FUNC6(inode, file);
	if (err < 0)
		return err;

	tu = FUNC2(sizeof(*tu), GFP_KERNEL);
	if (tu == NULL)
		return -ENOMEM;
	FUNC5(&tu->qlock);
	FUNC0(&tu->qchange_sleep);
	FUNC3(&tu->ioctl_lock);
	tu->ticks = 1;
	if (FUNC4(tu, 128) < 0) {
		FUNC1(tu);
		return -ENOMEM;
	}
	file->private_data = tu;
	return 0;
}