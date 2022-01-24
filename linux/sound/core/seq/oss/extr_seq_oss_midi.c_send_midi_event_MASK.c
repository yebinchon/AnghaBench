#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tick; } ;
struct snd_seq_event {scalar_t__ type; TYPE_1__ time; } ;
struct seq_oss_midi {int /*<<< orphan*/  seq_device; int /*<<< orphan*/  coder; } ;
struct seq_oss_devinfo {int /*<<< orphan*/  readq; TYPE_2__* timer; int /*<<< orphan*/  seq_mode; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_4__ {int /*<<< orphan*/  running; } ;

/* Variables and functions */
 scalar_t__ SNDRV_SEQ_EVENT_SYSEX ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,struct snd_seq_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_seq_event*) ; 
 int FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC5(struct seq_oss_devinfo *dp, struct snd_seq_event *ev, struct seq_oss_midi *mdev)
{
	char msg[32];
	int len;
	
	FUNC1(dp->readq, ev->time.tick, dp->seq_mode);
	if (!dp->timer->running)
		len = FUNC4(dp->timer);
	if (ev->type == SNDRV_SEQ_EVENT_SYSEX) {
		FUNC3(dp->readq, mdev->seq_device, ev);
	} else {
		len = FUNC0(mdev->coder, msg, sizeof(msg), ev);
		if (len > 0)
			FUNC2(dp->readq, mdev->seq_device, msg, len);
	}

	return 0;
}