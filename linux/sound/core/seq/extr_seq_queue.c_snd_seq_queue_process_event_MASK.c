#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct snd_seq_queue {int /*<<< orphan*/  timer; int /*<<< orphan*/  timeq; int /*<<< orphan*/  tickq; } ;
struct TYPE_9__ {int /*<<< orphan*/  base; int /*<<< orphan*/  value; } ;
struct TYPE_8__ {int /*<<< orphan*/  time; int /*<<< orphan*/  tick; } ;
struct TYPE_10__ {TYPE_3__ skew; TYPE_2__ time; int /*<<< orphan*/  value; } ;
struct TYPE_11__ {TYPE_4__ param; } ;
struct TYPE_12__ {TYPE_5__ queue; } ;
struct TYPE_7__ {int /*<<< orphan*/  client; } ;
struct snd_seq_event {int type; TYPE_6__ data; TYPE_1__ source; } ;

/* Variables and functions */
#define  SNDRV_SEQ_EVENT_CONTINUE 134 
#define  SNDRV_SEQ_EVENT_QUEUE_SKEW 133 
#define  SNDRV_SEQ_EVENT_SETPOS_TICK 132 
#define  SNDRV_SEQ_EVENT_SETPOS_TIME 131 
#define  SNDRV_SEQ_EVENT_START 130 
#define  SNDRV_SEQ_EVENT_STOP 129 
#define  SNDRV_SEQ_EVENT_TEMPO 128 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_queue*,struct snd_seq_event*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct snd_seq_queue *q,
					struct snd_seq_event *ev,
					int atomic, int hop)
{
	switch (ev->type) {
	case SNDRV_SEQ_EVENT_START:
		FUNC1(q->tickq, ev->source.client, 1);
		FUNC1(q->timeq, ev->source.client, 1);
		if (! FUNC7(q->timer))
			FUNC0(q, ev, atomic, hop);
		break;

	case SNDRV_SEQ_EVENT_CONTINUE:
		if (! FUNC2(q->timer))
			FUNC0(q, ev, atomic, hop);
		break;

	case SNDRV_SEQ_EVENT_STOP:
		FUNC8(q->timer);
		FUNC0(q, ev, atomic, hop);
		break;

	case SNDRV_SEQ_EVENT_TEMPO:
		FUNC6(q->timer, ev->data.queue.param.value);
		FUNC0(q, ev, atomic, hop);
		break;

	case SNDRV_SEQ_EVENT_SETPOS_TICK:
		if (FUNC3(q->timer, ev->data.queue.param.time.tick) == 0) {
			FUNC0(q, ev, atomic, hop);
		}
		break;

	case SNDRV_SEQ_EVENT_SETPOS_TIME:
		if (FUNC4(q->timer, ev->data.queue.param.time.time) == 0) {
			FUNC0(q, ev, atomic, hop);
		}
		break;
	case SNDRV_SEQ_EVENT_QUEUE_SKEW:
		if (FUNC5(q->timer,
					   ev->data.queue.param.skew.value,
					   ev->data.queue.param.skew.base) == 0) {
			FUNC0(q, ev, atomic, hop);
		}
		break;
	}
}