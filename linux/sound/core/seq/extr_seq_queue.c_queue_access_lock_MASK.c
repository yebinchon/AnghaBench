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
struct snd_seq_queue {int klocked; int /*<<< orphan*/  owner_lock; } ;

/* Variables and functions */
 int FUNC0 (struct snd_seq_queue*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct snd_seq_queue *q, int client)
{
	unsigned long flags;
	int access_ok;
	
	FUNC1(&q->owner_lock, flags);
	access_ok = FUNC0(q, client);
	if (access_ok)
		q->klocked = 1;
	FUNC2(&q->owner_lock, flags);
	return access_ok;
}