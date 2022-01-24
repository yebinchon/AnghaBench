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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct snd_seq_client* FUNC1 (int) ; 

bool FUNC2(int clientid)
{
	struct snd_seq_client *client;

	client = FUNC1(clientid);
	if (!client)
		return false;
	FUNC0(&client->ioctl_mutex);
	/* The client isn't unrefed here; see snd_seq_client_ioctl_unlock() */
	return true;
}