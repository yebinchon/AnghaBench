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
struct snd_seq_timer {int dummy; } ;
struct snd_seq_queue {struct snd_seq_timer* timer; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_timer*) ; 
 int FUNC3 (struct snd_seq_queue*) ; 

int FUNC4(int queueid)
{
	int result = 0;
	struct snd_seq_queue *queue;
	struct snd_seq_timer *tmr;

	queue = FUNC1(queueid);
	if (queue == NULL)
		return -EINVAL;
	tmr = queue->timer;
	if ((result = FUNC3(queue)) < 0) {
		FUNC2(tmr);
		result = FUNC3(queue);
	}
	FUNC0(queue);
	return result;
}