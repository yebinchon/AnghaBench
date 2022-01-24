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
struct snd_seq_client {int dummy; } ;
struct ioctl_handler {unsigned int cmd; int (* func ) (struct snd_seq_client*,void*) ;} ;

/* Variables and functions */
 int ENOTTY ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 struct snd_seq_client* FUNC2 (int) ; 
 struct ioctl_handler* ioctl_handlers ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_seq_client*,void*) ; 

int FUNC5(int clientid, unsigned int cmd, void *arg)
{
	const struct ioctl_handler *handler;
	struct snd_seq_client *client;

	client = FUNC2(clientid);
	if (client == NULL)
		return -ENXIO;

	for (handler = ioctl_handlers; handler->cmd > 0; ++handler) {
		if (handler->cmd == cmd)
			return handler->func(client, arg);
	}

	FUNC3("ALSA: seq unknown ioctl() 0x%x (type='%c', number=0x%02x)\n",
		 cmd, FUNC1(cmd), FUNC0(cmd));
	return -ENOTTY;
}