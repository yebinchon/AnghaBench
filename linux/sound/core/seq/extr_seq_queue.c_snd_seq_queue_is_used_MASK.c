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
struct snd_seq_queue {int /*<<< orphan*/  clients_bitmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 

int FUNC3(int queueid, int client)
{
	struct snd_seq_queue *q;
	int result;

	q = FUNC1(queueid);
	if (q == NULL)
		return -EINVAL; /* invalid queue */
	result = FUNC2(client, q->clients_bitmap) ? 1 : 0;
	FUNC0(q);
	return result;
}