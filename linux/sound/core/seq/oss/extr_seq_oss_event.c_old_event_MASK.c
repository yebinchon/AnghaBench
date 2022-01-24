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
struct TYPE_4__ {int /*<<< orphan*/  note; int /*<<< orphan*/  chn; int /*<<< orphan*/  vel; } ;
struct TYPE_3__ {int code; } ;
union evrec {TYPE_2__ n; TYPE_1__ s; } ;
struct snd_seq_event {int dummy; } ;
struct seq_oss_devinfo {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SEQ_NOTEOFF 132 
#define  SEQ_NOTEON 131 
#define  SEQ_PGMCHANGE 130 
#define  SEQ_SYNCTIMER 129 
#define  SEQ_WAIT 128 
 int /*<<< orphan*/  SNDRV_SEQ_EVENT_PGMCHANGE ; 
 int FUNC0 (struct seq_oss_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_seq_event*) ; 
 int FUNC1 (struct seq_oss_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_seq_event*) ; 
 int FUNC2 (struct seq_oss_devinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_seq_event*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct seq_oss_devinfo *dp, union evrec *q, struct snd_seq_event *ev)
{
	switch (q->s.code) {
	case SEQ_NOTEOFF:
		return FUNC0(dp, 0, q->n.chn, q->n.note, q->n.vel, ev);

	case SEQ_NOTEON:
		return FUNC1(dp, 0, q->n.chn, q->n.note, q->n.vel, ev);

	case SEQ_WAIT:
		/* skip */
		break;

	case SEQ_PGMCHANGE:
		return FUNC2(dp, 0, SNDRV_SEQ_EVENT_PGMCHANGE,
					 q->n.chn, 0, q->n.note, ev);

	case SEQ_SYNCTIMER:
		return FUNC3(dp->timer);
	}

	return -EINVAL;
}