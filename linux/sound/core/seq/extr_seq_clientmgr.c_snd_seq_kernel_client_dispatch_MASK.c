#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int client; } ;
struct snd_seq_event {TYPE_1__ source; int /*<<< orphan*/  queue; } ;
struct snd_seq_client {int /*<<< orphan*/  accept_output; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  SNDRV_SEQ_QUEUE_DIRECT ; 
 scalar_t__ FUNC0 (struct snd_seq_event*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_client*) ; 
 struct snd_seq_client* FUNC3 (int) ; 
 int FUNC4 (struct snd_seq_client*,struct snd_seq_event*,int,int) ; 

int FUNC5(int client, struct snd_seq_event * ev,
				   int atomic, int hop)
{
	struct snd_seq_client *cptr;
	int result;

	if (FUNC1(!ev))
		return -EINVAL;

	/* fill in client number */
	ev->queue = SNDRV_SEQ_QUEUE_DIRECT;
	ev->source.client = client;

	if (FUNC0(ev))
		return -EINVAL;

	cptr = FUNC3(client);
	if (cptr == NULL)
		return -EINVAL;

	if (!cptr->accept_output)
		result = -EPERM;
	else
		result = FUNC4(cptr, ev, atomic, hop);

	FUNC2(cptr);
	return result;
}