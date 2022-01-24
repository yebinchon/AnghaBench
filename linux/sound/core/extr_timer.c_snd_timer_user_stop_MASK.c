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
struct snd_timer_user {int /*<<< orphan*/  timeri; } ;
struct file {struct snd_timer_user* private_data; } ;

/* Variables and functions */
 int EBADFD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct file *file)
{
	int err;
	struct snd_timer_user *tu;

	tu = file->private_data;
	if (!tu->timeri)
		return -EBADFD;
	err = FUNC0(tu->timeri);
	if (err < 0)
		return err;
	return 0;
}