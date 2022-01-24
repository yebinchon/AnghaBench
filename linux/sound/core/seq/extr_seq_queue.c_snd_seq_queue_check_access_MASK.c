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
struct snd_seq_queue {int /*<<< orphan*/  owner_lock; } ;

/* Variables and functions */
 int FUNC0 (struct snd_seq_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(int queueid, int client)
{
	struct snd_seq_queue *q = FUNC2(queueid);
	int access_ok;
	unsigned long flags;

	if (! q)
		return 0;
	FUNC3(&q->owner_lock, flags);
	access_ok = FUNC0(q, client);
	FUNC4(&q->owner_lock, flags);
	FUNC1(q);
	return access_ok;
}