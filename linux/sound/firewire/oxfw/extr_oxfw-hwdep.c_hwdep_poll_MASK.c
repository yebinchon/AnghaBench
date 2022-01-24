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
struct snd_oxfw {int /*<<< orphan*/  lock; scalar_t__ dev_lock_changed; int /*<<< orphan*/  hwdep_wait; } ;
struct snd_hwdep {struct snd_oxfw* private_data; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC3(struct snd_hwdep *hwdep, struct file *file,
			       poll_table *wait)
{
	struct snd_oxfw *oxfw = hwdep->private_data;
	__poll_t events;

	FUNC0(file, &oxfw->hwdep_wait, wait);

	FUNC1(&oxfw->lock);
	if (oxfw->dev_lock_changed)
		events = EPOLLIN | EPOLLRDNORM;
	else
		events = 0;
	FUNC2(&oxfw->lock);

	return events;
}