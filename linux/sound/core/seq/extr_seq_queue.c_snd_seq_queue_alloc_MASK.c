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
struct snd_seq_queue {unsigned int info_flags; int /*<<< orphan*/  use_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct snd_seq_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_queue*) ; 
 scalar_t__ FUNC2 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_seq_queue*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct snd_seq_queue *FUNC7(int client, int locked, unsigned int info_flags)
{
	struct snd_seq_queue *q;

	q = FUNC3(client, locked);
	if (q == NULL)
		return FUNC0(-ENOMEM);
	q->info_flags = info_flags;
	FUNC4(q, client, 1);
	FUNC6(&q->use_lock);
	if (FUNC2(q) < 0) {
		FUNC5(&q->use_lock);
		FUNC1(q);
		return FUNC0(-ENOMEM);
	}
	return q;
}