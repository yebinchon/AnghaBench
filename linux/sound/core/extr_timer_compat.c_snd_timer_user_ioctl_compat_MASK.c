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
struct snd_timer_user {int /*<<< orphan*/  ioctl_lock; } ;
struct file {struct snd_timer_user* private_data; } ;

/* Variables and functions */
 long FUNC0 (struct file*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC3(struct file *file, unsigned int cmd,
					unsigned long arg)
{
	struct snd_timer_user *tu = file->private_data;
	long ret;

	FUNC1(&tu->ioctl_lock);
	ret = FUNC0(file, cmd, arg);
	FUNC2(&tu->ioctl_lock);
	return ret;
}