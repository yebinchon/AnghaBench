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
struct snd_timer_user {int /*<<< orphan*/  qlock; scalar_t__ disconnected; scalar_t__ qused; int /*<<< orphan*/  qchange_sleep; } ;
struct file {struct snd_timer_user* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLERR ; 
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC3(struct file *file, poll_table * wait)
{
        __poll_t mask;
        struct snd_timer_user *tu;

        tu = file->private_data;

        FUNC0(file, &tu->qchange_sleep, wait);

	mask = 0;
	FUNC1(&tu->qlock);
	if (tu->qused)
		mask |= EPOLLIN | EPOLLRDNORM;
	if (tu->disconnected)
		mask |= EPOLLERR;
	FUNC2(&tu->qlock);

	return mask;
}