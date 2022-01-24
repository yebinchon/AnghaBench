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
struct snd_seq_timer {scalar_t__ type; int /*<<< orphan*/  preferred_resolution; int /*<<< orphan*/  alsa_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  resolution; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {TYPE_1__ alsa; } ;
struct snd_seq_queue_timer {scalar_t__ type; TYPE_2__ u; int /*<<< orphan*/  queue; } ;
struct snd_seq_queue {int /*<<< orphan*/  timer_mutex; int /*<<< orphan*/  queue; struct snd_seq_timer* timer; } ;
struct snd_seq_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ SNDRV_SEQ_TIMER_ALSA ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_queue_timer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct snd_seq_client *client,
					 void *arg)
{
	struct snd_seq_queue_timer *timer = arg;
	struct snd_seq_queue *queue;
	struct snd_seq_timer *tmr;

	queue = FUNC4(timer->queue);
	if (queue == NULL)
		return -EINVAL;

	FUNC1(&queue->timer_mutex);
	tmr = queue->timer;
	FUNC0(timer, 0, sizeof(*timer));
	timer->queue = queue->queue;

	timer->type = tmr->type;
	if (tmr->type == SNDRV_SEQ_TIMER_ALSA) {
		timer->u.alsa.id = tmr->alsa_id;
		timer->u.alsa.resolution = tmr->preferred_resolution;
	}
	FUNC2(&queue->timer_mutex);
	FUNC3(queue);
	
	return 0;
}