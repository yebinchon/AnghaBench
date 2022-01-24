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
struct snd_seq_queue_timer {scalar_t__ type; int /*<<< orphan*/  queue; TYPE_2__ u; } ;
struct snd_seq_queue {int /*<<< orphan*/  timer_mutex; struct snd_seq_timer* timer; } ;
struct snd_seq_client {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int EPERM ; 
 scalar_t__ SNDRV_SEQ_TIMER_ALSA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct snd_seq_client *client,
					 void *arg)
{
	struct snd_seq_queue_timer *timer = arg;
	int result = 0;

	if (timer->type != SNDRV_SEQ_TIMER_ALSA)
		return -EINVAL;

	if (FUNC4(timer->queue, client->number)) {
		struct snd_seq_queue *q;
		struct snd_seq_timer *tmr;

		q = FUNC3(timer->queue);
		if (q == NULL)
			return -ENXIO;
		FUNC0(&q->timer_mutex);
		tmr = q->timer;
		FUNC5(timer->queue);
		tmr->type = timer->type;
		if (tmr->type == SNDRV_SEQ_TIMER_ALSA) {
			tmr->alsa_id = timer->u.alsa.id;
			tmr->preferred_resolution = timer->u.alsa.resolution;
		}
		result = FUNC6(timer->queue);
		FUNC1(&q->timer_mutex);
		FUNC2(q);
	} else {
		return -EPERM;
	}	

	return result;
}