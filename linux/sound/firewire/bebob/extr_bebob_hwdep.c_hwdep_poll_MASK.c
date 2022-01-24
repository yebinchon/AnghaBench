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
struct snd_hwdep {struct snd_bebob* private_data; } ;
struct snd_bebob {int /*<<< orphan*/  lock; scalar_t__ dev_lock_changed; int /*<<< orphan*/  hwdep_wait; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t
FUNC3(struct snd_hwdep *hwdep, struct file *file, poll_table *wait)
{
	struct snd_bebob *bebob = hwdep->private_data;
	__poll_t events;

	FUNC0(file, &bebob->hwdep_wait, wait);

	FUNC1(&bebob->lock);
	if (bebob->dev_lock_changed)
		events = EPOLLIN | EPOLLRDNORM;
	else
		events = 0;
	FUNC2(&bebob->lock);

	return events;
}