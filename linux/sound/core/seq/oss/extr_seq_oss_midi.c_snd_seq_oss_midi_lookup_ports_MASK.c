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
struct TYPE_2__ {int client; int port; } ;
struct snd_seq_port_info {int client; TYPE_1__ addr; } ;
struct snd_seq_client_info {int client; TYPE_1__ addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_SEQ_IOCTL_QUERY_NEXT_CLIENT ; 
 int /*<<< orphan*/  SNDRV_SEQ_IOCTL_QUERY_NEXT_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_port_info*) ; 
 struct snd_seq_port_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct snd_seq_port_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_seq_port_info*) ; 

int
FUNC4(int client)
{
	struct snd_seq_client_info *clinfo;
	struct snd_seq_port_info *pinfo;

	clinfo = FUNC1(sizeof(*clinfo), GFP_KERNEL);
	pinfo = FUNC1(sizeof(*pinfo), GFP_KERNEL);
	if (! clinfo || ! pinfo) {
		FUNC0(clinfo);
		FUNC0(pinfo);
		return -ENOMEM;
	}
	clinfo->client = -1;
	while (FUNC2(client, SNDRV_SEQ_IOCTL_QUERY_NEXT_CLIENT, clinfo) == 0) {
		if (clinfo->client == client)
			continue; /* ignore myself */
		pinfo->addr.client = clinfo->client;
		pinfo->addr.port = -1;
		while (FUNC2(client, SNDRV_SEQ_IOCTL_QUERY_NEXT_PORT, pinfo) == 0)
			FUNC3(pinfo);
	}
	FUNC0(clinfo);
	FUNC0(pinfo);
	return 0;
}