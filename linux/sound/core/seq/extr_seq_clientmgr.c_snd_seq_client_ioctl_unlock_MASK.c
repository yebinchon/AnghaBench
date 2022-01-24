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
struct snd_seq_client {int /*<<< orphan*/  ioctl_mutex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_client*) ; 
 struct snd_seq_client* FUNC3 (int) ; 

void FUNC4(int clientid)
{
	struct snd_seq_client *client;

	client = FUNC3(clientid);
	if (FUNC0(!client))
		return;
	FUNC1(&client->ioctl_mutex);
	/* The doubly unrefs below are intentional; the first one releases the
	 * leftover from snd_seq_client_ioctl_lock() above, and the second one
	 * is for releasing snd_seq_client_use_ptr() in this function
	 */
	FUNC2(client);
	FUNC2(client);
}