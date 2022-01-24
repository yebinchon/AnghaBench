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
struct snd_seq_queue {int /*<<< orphan*/  queue; int /*<<< orphan*/  timeq; int /*<<< orphan*/  tickq; int /*<<< orphan*/  clients_bitmap; } ;

/* Variables and functions */
 int SNDRV_SEQ_MAX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 

void FUNC7(int client)
{
	int i;
	struct snd_seq_queue *q;

	/* delete own queues from queue list */
	for (i = 0; i < SNDRV_SEQ_MAX_QUEUES; i++) {
		if ((q = FUNC1(i, client)) != NULL)
			FUNC0(q);
	}

	/* remove cells from existing queues -
	 * they are not owned by this client
	 */
	for (i = 0; i < SNDRV_SEQ_MAX_QUEUES; i++) {
		if ((q = FUNC3(i)) == NULL)
			continue;
		if (FUNC6(client, q->clients_bitmap)) {
			FUNC4(q->tickq, client, 0);
			FUNC4(q->timeq, client, 0);
			FUNC5(q->queue, client, 0);
		}
		FUNC2(q);
	}
}