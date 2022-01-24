#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union evrec {int dummy; } evrec ;
struct TYPE_6__ {int /*<<< orphan*/  tick; } ;
struct snd_seq_event {TYPE_2__ time; int /*<<< orphan*/  type; } ;
struct TYPE_5__ {int /*<<< orphan*/  port; int /*<<< orphan*/  client; } ;
struct seq_oss_devinfo {int /*<<< orphan*/  file_mode; int /*<<< orphan*/  cseq; TYPE_3__* timer; TYPE_1__ addr; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  event ;
struct TYPE_7__ {int /*<<< orphan*/  running; scalar_t__ realtime; } ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_SEQ_EVENT_NOTEOFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_event*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct snd_seq_event*,struct file*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_oss_devinfo*,struct snd_seq_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_oss_devinfo*,struct snd_seq_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct seq_oss_devinfo*,union evrec*,struct snd_seq_event*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,union evrec*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC8(struct seq_oss_devinfo *dp, union evrec *rec, struct file *opt)
{
	int rc = 0;
	struct snd_seq_event event;

	/* if this is a timing event, process the current time */
	if (FUNC6(dp->timer, rec))
		return 0; /* no need to insert queue */

	/* parse this event */
	FUNC1(&event, 0, sizeof(event));
	/* set dummy -- to be sure */
	event.type = SNDRV_SEQ_EVENT_NOTEOFF;
	FUNC4(dp, &event, dp->addr.client, dp->addr.port);

	if (FUNC5(dp, rec, &event))
		return 0; /* invalid event - no need to insert queue */

	event.time.tick = FUNC7(dp->timer);
	if (dp->timer->realtime || !dp->timer->running)
		FUNC3(dp, &event, 0, 0);
	else
		rc = FUNC2(dp->cseq, &event, opt,
						   !FUNC0(dp->file_mode));
	return rc;
}