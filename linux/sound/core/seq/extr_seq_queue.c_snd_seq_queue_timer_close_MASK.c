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
struct snd_seq_queue {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_queue*) ; 

int FUNC3(int queueid)
{
	struct snd_seq_queue *queue;
	int result = 0;

	queue = FUNC1(queueid);
	if (queue == NULL)
		return -EINVAL;
	FUNC2(queue);
	FUNC0(queue);
	return result;
}