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
struct TYPE_2__ {int /*<<< orphan*/  port; int /*<<< orphan*/  client; } ;
struct snd_seq_port_info {TYPE_1__ addr; } ;
struct snd_seq_client_port {TYPE_1__ addr; } ;
struct snd_seq_client {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_client*) ; 
 struct snd_seq_client* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_client_port*,struct snd_seq_port_info*) ; 
 struct snd_seq_client_port* FUNC3 (struct snd_seq_client*,struct snd_seq_port_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_seq_client_port*) ; 

__attribute__((used)) static int FUNC5(struct snd_seq_client *client,
					 void *arg)
{
	struct snd_seq_port_info *info = arg;
	struct snd_seq_client *cptr;
	struct snd_seq_client_port *port = NULL;

	cptr = FUNC1(info->addr.client);
	if (cptr == NULL)
		return -ENXIO;

	/* search for next port */
	info->addr.port++;
	port = FUNC3(cptr, info);
	if (port == NULL) {
		FUNC0(cptr);
		return -ENOENT;
	}

	/* get port info */
	info->addr = port->addr;
	FUNC2(port, info);
	FUNC4(port);
	FUNC0(cptr);

	return 0;
}