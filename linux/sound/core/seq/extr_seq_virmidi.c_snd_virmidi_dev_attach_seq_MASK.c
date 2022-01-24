#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_virmidi_dev {int client; int device; int /*<<< orphan*/  port; TYPE_3__* card; TYPE_1__* rmidi; } ;
struct TYPE_5__ {int client; int /*<<< orphan*/  port; } ;
struct snd_seq_port_info {int capability; int type; int midi_channels; TYPE_2__ addr; struct snd_seq_port_callback* kernel; int /*<<< orphan*/  name; } ;
struct snd_seq_port_callback {int /*<<< orphan*/  event_input; int /*<<< orphan*/  unuse; int /*<<< orphan*/  use; int /*<<< orphan*/  unsubscribe; int /*<<< orphan*/  subscribe; struct snd_virmidi_dev* private_data; int /*<<< orphan*/  owner; } ;
typedef  int /*<<< orphan*/  pcallbacks ;
struct TYPE_6__ {int number; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_SEQ_IOCTL_CREATE_PORT ; 
 int SNDRV_SEQ_PORT_CAP_DUPLEX ; 
 int SNDRV_SEQ_PORT_CAP_READ ; 
 int SNDRV_SEQ_PORT_CAP_SUBS_READ ; 
 int SNDRV_SEQ_PORT_CAP_SUBS_WRITE ; 
 int SNDRV_SEQ_PORT_CAP_SYNC_READ ; 
 int SNDRV_SEQ_PORT_CAP_SYNC_WRITE ; 
 int SNDRV_SEQ_PORT_CAP_WRITE ; 
 int SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC ; 
 int SNDRV_SEQ_PORT_TYPE_PORT ; 
 int SNDRV_SEQ_PORT_TYPE_SOFTWARE ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_port_info*) ; 
 struct snd_seq_port_info* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_port_callback*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_3__*,int,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,struct snd_seq_port_info*) ; 
 int /*<<< orphan*/  snd_virmidi_event_input ; 
 int /*<<< orphan*/  snd_virmidi_subscribe ; 
 int /*<<< orphan*/  snd_virmidi_unsubscribe ; 
 int /*<<< orphan*/  snd_virmidi_unuse ; 
 int /*<<< orphan*/  snd_virmidi_use ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static int FUNC7(struct snd_virmidi_dev *rdev)
{
	int client;
	struct snd_seq_port_callback pcallbacks;
	struct snd_seq_port_info *pinfo;
	int err;

	if (rdev->client >= 0)
		return 0;

	pinfo = FUNC1(sizeof(*pinfo), GFP_KERNEL);
	if (!pinfo) {
		err = -ENOMEM;
		goto __error;
	}

	client = FUNC3(rdev->card, rdev->device,
					      "%s %d-%d", rdev->rmidi->name,
					      rdev->card->number,
					      rdev->device);
	if (client < 0) {
		err = client;
		goto __error;
	}
	rdev->client = client;

	/* create a port */
	pinfo->addr.client = client;
	FUNC6(pinfo->name, "VirMIDI %d-%d", rdev->card->number, rdev->device);
	/* set all capabilities */
	pinfo->capability |= SNDRV_SEQ_PORT_CAP_WRITE | SNDRV_SEQ_PORT_CAP_SYNC_WRITE | SNDRV_SEQ_PORT_CAP_SUBS_WRITE;
	pinfo->capability |= SNDRV_SEQ_PORT_CAP_READ | SNDRV_SEQ_PORT_CAP_SYNC_READ | SNDRV_SEQ_PORT_CAP_SUBS_READ;
	pinfo->capability |= SNDRV_SEQ_PORT_CAP_DUPLEX;
	pinfo->type = SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC
		| SNDRV_SEQ_PORT_TYPE_SOFTWARE
		| SNDRV_SEQ_PORT_TYPE_PORT;
	pinfo->midi_channels = 16;
	FUNC2(&pcallbacks, 0, sizeof(pcallbacks));
	pcallbacks.owner = THIS_MODULE;
	pcallbacks.private_data = rdev;
	pcallbacks.subscribe = snd_virmidi_subscribe;
	pcallbacks.unsubscribe = snd_virmidi_unsubscribe;
	pcallbacks.use = snd_virmidi_use;
	pcallbacks.unuse = snd_virmidi_unuse;
	pcallbacks.event_input = snd_virmidi_event_input;
	pinfo->kernel = &pcallbacks;
	err = FUNC5(client, SNDRV_SEQ_IOCTL_CREATE_PORT, pinfo);
	if (err < 0) {
		FUNC4(client);
		rdev->client = -1;
		goto __error;
	}

	rdev->port = pinfo->addr.port;
	err = 0; /* success */

 __error:
	FUNC0(pinfo);
	return err;
}