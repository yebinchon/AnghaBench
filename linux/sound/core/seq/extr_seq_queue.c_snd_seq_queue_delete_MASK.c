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
 int SNDRV_SEQ_MAX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC1 (int,int) ; 

int FUNC2(int client, int queueid)
{
	struct snd_seq_queue *q;

	if (queueid < 0 || queueid >= SNDRV_SEQ_MAX_QUEUES)
		return -EINVAL;
	q = FUNC1(queueid, client);
	if (q == NULL)
		return -EINVAL;
	FUNC0(q);

	return 0;
}