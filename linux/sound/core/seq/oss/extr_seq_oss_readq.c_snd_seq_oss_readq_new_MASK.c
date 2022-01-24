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
typedef  union evrec {int dummy; } evrec ;
struct seq_oss_readq {int maxlen; unsigned long input_time; int /*<<< orphan*/  pre_event_timeout; int /*<<< orphan*/  lock; int /*<<< orphan*/  midi_sleep; scalar_t__ tail; scalar_t__ head; scalar_t__ qlen; int /*<<< orphan*/  q; } ;
struct seq_oss_devinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_SEQ_OSS_MAX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_oss_readq*) ; 
 struct seq_oss_readq* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct seq_oss_readq *
FUNC5(struct seq_oss_devinfo *dp, int maxlen)
{
	struct seq_oss_readq *q;

	q = FUNC3(sizeof(*q), GFP_KERNEL);
	if (!q)
		return NULL;

	q->q = FUNC1(maxlen, sizeof(union evrec), GFP_KERNEL);
	if (!q->q) {
		FUNC2(q);
		return NULL;
	}

	q->maxlen = maxlen;
	q->qlen = 0;
	q->head = q->tail = 0;
	FUNC0(&q->midi_sleep);
	FUNC4(&q->lock);
	q->pre_event_timeout = SNDRV_SEQ_OSS_MAX_TIMEOUT;
	q->input_time = (unsigned long)-1;

	return q;
}