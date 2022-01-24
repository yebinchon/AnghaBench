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
struct snd_seq_queue {int locked; int owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC3 (int) ; 

int FUNC4(int queueid, int client, int locked)
{
	struct snd_seq_queue *q = FUNC3(queueid);

	if (q == NULL)
		return -EINVAL;

	if (! FUNC0(q, client)) {
		FUNC2(q);
		return -EPERM;
	}

	q->locked = locked ? 1 : 0;
	q->owner = client;
	FUNC1(q);
	FUNC2(q);

	return 0;
}