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
struct snd_seq_queue {int clients; int /*<<< orphan*/  timer; int /*<<< orphan*/  clients_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_seq_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_queue*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct snd_seq_queue *queue, int client, int use)
{
	if (use) {
		if (!FUNC4(client, queue->clients_bitmap))
			queue->clients++;
	} else {
		if (FUNC3(client, queue->clients_bitmap))
			queue->clients--;
	}
	if (queue->clients) {
		if (use && queue->clients == 1)
			FUNC1(queue->timer);
		FUNC2(queue);
	} else {
		FUNC0(queue);
	}
}