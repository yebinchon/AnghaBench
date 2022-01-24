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
typedef  int /*<<< orphan*/  tid ;
struct snd_timer_instance {int /*<<< orphan*/  flags; struct snd_seq_queue* callback_data; int /*<<< orphan*/  callback; } ;
struct snd_timer_id {scalar_t__ dev_class; scalar_t__ device; int card; void* dev_sclass; } ;
struct snd_seq_timer {scalar_t__ type; int /*<<< orphan*/  lock; struct snd_timer_instance* timeri; struct snd_timer_id alsa_id; } ;
struct snd_seq_queue {int queue; struct snd_seq_timer* timer; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ SNDRV_SEQ_TIMER_ALSA ; 
 scalar_t__ SNDRV_TIMER_CLASS_GLOBAL ; 
 scalar_t__ SNDRV_TIMER_CLASS_SLAVE ; 
 scalar_t__ SNDRV_TIMER_GLOBAL_SYSTEM ; 
 int /*<<< orphan*/  SNDRV_TIMER_IFLG_AUTO ; 
 void* SNDRV_TIMER_SCLASS_SEQUENCER ; 
 int /*<<< orphan*/  FUNC0 (struct snd_timer_id*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  snd_seq_timer_interrupt ; 
 int FUNC3 (struct snd_timer_instance**,char*,struct snd_timer_id*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

int FUNC7(struct snd_seq_queue *q)
{
	struct snd_timer_instance *t;
	struct snd_seq_timer *tmr;
	char str[32];
	int err;

	tmr = q->timer;
	if (FUNC2(!tmr))
		return -EINVAL;
	if (tmr->timeri)
		return -EBUSY;
	FUNC6(str, "sequencer queue %i", q->queue);
	if (tmr->type != SNDRV_SEQ_TIMER_ALSA)	/* standard ALSA timer */
		return -EINVAL;
	if (tmr->alsa_id.dev_class != SNDRV_TIMER_CLASS_SLAVE)
		tmr->alsa_id.dev_sclass = SNDRV_TIMER_SCLASS_SEQUENCER;
	err = FUNC3(&t, str, &tmr->alsa_id, q->queue);
	if (err < 0 && tmr->alsa_id.dev_class != SNDRV_TIMER_CLASS_SLAVE) {
		if (tmr->alsa_id.dev_class != SNDRV_TIMER_CLASS_GLOBAL ||
		    tmr->alsa_id.device != SNDRV_TIMER_GLOBAL_SYSTEM) {
			struct snd_timer_id tid;
			FUNC0(&tid, 0, sizeof(tid));
			tid.dev_class = SNDRV_TIMER_CLASS_GLOBAL;
			tid.dev_sclass = SNDRV_TIMER_SCLASS_SEQUENCER;
			tid.card = -1;
			tid.device = SNDRV_TIMER_GLOBAL_SYSTEM;
			err = FUNC3(&t, str, &tid, q->queue);
		}
	}
	if (err < 0) {
		FUNC1("ALSA: seq fatal error: cannot create timer (%i)\n", err);
		return err;
	}
	t->callback = snd_seq_timer_interrupt;
	t->callback_data = q;
	t->flags |= SNDRV_TIMER_IFLG_AUTO;
	FUNC4(&tmr->lock);
	tmr->timeri = t;
	FUNC5(&tmr->lock);
	return 0;
}