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
struct snd_seq_queue {int queue; } ;

/* Variables and functions */
 int SNDRV_SEQ_MAX_QUEUES ; 
 int /*<<< orphan*/  num_queues ; 
 struct snd_seq_queue** queue_list ; 
 int /*<<< orphan*/  queue_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct snd_seq_queue *q)
{
	int i;
	unsigned long flags;

	FUNC0(&queue_list_lock, flags);
	for (i = 0; i < SNDRV_SEQ_MAX_QUEUES; i++) {
		if (! queue_list[i]) {
			queue_list[i] = q;
			q->queue = i;
			num_queues++;
			FUNC1(&queue_list_lock, flags);
			return i;
		}
	}
	FUNC1(&queue_list_lock, flags);
	return -1;
}