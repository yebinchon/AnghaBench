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
struct snd_seq_remove_events {int remove_mode; scalar_t__ queue; } ;
struct snd_seq_queue {scalar_t__ queue; int /*<<< orphan*/  timeq; int /*<<< orphan*/  tickq; int /*<<< orphan*/  clients_bitmap; } ;

/* Variables and functions */
 int SNDRV_SEQ_MAX_QUEUES ; 
 int SNDRV_SEQ_REMOVE_DEST ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,struct snd_seq_remove_events*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 

void FUNC4(int client, struct snd_seq_remove_events *info)
{
	int i;
	struct snd_seq_queue *q;

	for (i = 0; i < SNDRV_SEQ_MAX_QUEUES; i++) {
		if ((q = FUNC1(i)) == NULL)
			continue;
		if (FUNC3(client, q->clients_bitmap) &&
		    (! (info->remove_mode & SNDRV_SEQ_REMOVE_DEST) ||
		     q->queue == info->queue)) {
			FUNC2(q->tickq, client, info);
			FUNC2(q->timeq, client, info);
		}
		FUNC0(q);
	}
}