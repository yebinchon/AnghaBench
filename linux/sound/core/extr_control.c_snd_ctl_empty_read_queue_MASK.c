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
struct snd_kctl_event {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  next; } ;
struct snd_ctl_file {int /*<<< orphan*/  read_lock; TYPE_1__ events; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_kctl_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct snd_kctl_event* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct snd_ctl_file * ctl)
{
	unsigned long flags;
	struct snd_kctl_event *cread;

	FUNC4(&ctl->read_lock, flags);
	while (!FUNC2(&ctl->events)) {
		cread = FUNC3(ctl->events.next);
		FUNC1(&cread->list);
		FUNC0(cread);
	}
	FUNC5(&ctl->read_lock, flags);
}