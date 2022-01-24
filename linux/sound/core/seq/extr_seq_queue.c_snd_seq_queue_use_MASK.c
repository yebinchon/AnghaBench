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
struct snd_seq_queue {int /*<<< orphan*/  timer_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_queue*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC4 (int) ; 

int FUNC5(int queueid, int client, int use)
{
	struct snd_seq_queue *queue;

	queue = FUNC4(queueid);
	if (queue == NULL)
		return -EINVAL;
	FUNC0(&queue->timer_mutex);
	FUNC2(queue, client, use);
	FUNC1(&queue->timer_mutex);
	FUNC3(queue);
	return 0;
}