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
struct snd_seq_port_info {int capability; int type; int midi_channels; int midi_voices; TYPE_1__ addr; struct snd_seq_port_callback* kernel; int /*<<< orphan*/  name; } ;
struct snd_seq_port_callback {int dummy; } ;
typedef  int /*<<< orphan*/  portinfo ;

/* Variables and functions */
 int /*<<< orphan*/  SNDRV_SEQ_IOCTL_CREATE_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_port_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct snd_seq_port_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC3(int client,
			      struct snd_seq_port_callback *pcbp,
			      int cap, int type, int midi_channels,
			      int midi_voices, char *portname)
{
	struct snd_seq_port_info portinfo;
	int  ret;

	/* Set up the port */
	FUNC0(&portinfo, 0, sizeof(portinfo));
	portinfo.addr.client = client;
	FUNC2(portinfo.name, portname ? portname : "Unnamed port",
		sizeof(portinfo.name));

	portinfo.capability = cap;
	portinfo.type = type;
	portinfo.kernel = pcbp;
	portinfo.midi_channels = midi_channels;
	portinfo.midi_voices = midi_voices;

	/* Create it */
	ret = FUNC1(client,
					SNDRV_SEQ_IOCTL_CREATE_PORT,
					&portinfo);

	if (ret >= 0)
		ret = portinfo.addr.port;

	return ret;
}