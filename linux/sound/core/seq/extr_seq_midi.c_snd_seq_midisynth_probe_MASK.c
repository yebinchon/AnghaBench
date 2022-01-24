#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ client; int port; } ;
struct snd_seq_port_info {int device; unsigned int subdevice; unsigned int subdevices_count; scalar_t__ seq_client; int flags; char* name; int capability; int type; int midi_channels; int seq_port; unsigned int* ports_per_device; int /*<<< orphan*/  num_ports; struct snd_seq_port_info** ports; TYPE_2__ addr; struct snd_seq_port_info* kernel; int /*<<< orphan*/  event_input; int /*<<< orphan*/  unuse; int /*<<< orphan*/  use; int /*<<< orphan*/  unsubscribe; int /*<<< orphan*/  subscribe; struct snd_seq_port_info* private_data; int /*<<< orphan*/  owner; int /*<<< orphan*/  subname; void* stream; } ;
struct snd_seq_port_callback {int device; unsigned int subdevice; unsigned int subdevices_count; scalar_t__ seq_client; int flags; char* name; int capability; int type; int midi_channels; int seq_port; unsigned int* ports_per_device; int /*<<< orphan*/  num_ports; struct snd_seq_port_callback** ports; TYPE_2__ addr; struct snd_seq_port_callback* kernel; int /*<<< orphan*/  event_input; int /*<<< orphan*/  unuse; int /*<<< orphan*/  use; int /*<<< orphan*/  unsubscribe; int /*<<< orphan*/  subscribe; struct snd_seq_port_callback* private_data; int /*<<< orphan*/  owner; int /*<<< orphan*/  subname; void* stream; } ;
struct snd_seq_device {int device; struct snd_card* card; struct snd_rawmidi* private_data; } ;
struct snd_rawmidi_info {int device; unsigned int subdevice; unsigned int subdevices_count; scalar_t__ seq_client; int flags; char* name; int capability; int type; int midi_channels; int seq_port; unsigned int* ports_per_device; int /*<<< orphan*/  num_ports; struct snd_rawmidi_info** ports; TYPE_2__ addr; struct snd_rawmidi_info* kernel; int /*<<< orphan*/  event_input; int /*<<< orphan*/  unuse; int /*<<< orphan*/  use; int /*<<< orphan*/  unsubscribe; int /*<<< orphan*/  subscribe; struct snd_rawmidi_info* private_data; int /*<<< orphan*/  owner; int /*<<< orphan*/  subname; void* stream; } ;
struct snd_rawmidi {TYPE_1__* ops; } ;
struct snd_card {size_t number; scalar_t__* shortname; } ;
struct seq_midisynth_client {int device; unsigned int subdevice; unsigned int subdevices_count; scalar_t__ seq_client; int flags; char* name; int capability; int type; int midi_channels; int seq_port; unsigned int* ports_per_device; int /*<<< orphan*/  num_ports; struct seq_midisynth_client** ports; TYPE_2__ addr; struct seq_midisynth_client* kernel; int /*<<< orphan*/  event_input; int /*<<< orphan*/  unuse; int /*<<< orphan*/  use; int /*<<< orphan*/  unsubscribe; int /*<<< orphan*/  subscribe; struct seq_midisynth_client* private_data; int /*<<< orphan*/  owner; int /*<<< orphan*/  subname; void* stream; } ;
struct seq_midisynth {int device; unsigned int subdevice; unsigned int subdevices_count; scalar_t__ seq_client; int flags; char* name; int capability; int type; int midi_channels; int seq_port; unsigned int* ports_per_device; int /*<<< orphan*/  num_ports; struct seq_midisynth** ports; TYPE_2__ addr; struct seq_midisynth* kernel; int /*<<< orphan*/  event_input; int /*<<< orphan*/  unuse; int /*<<< orphan*/  use; int /*<<< orphan*/  unsubscribe; int /*<<< orphan*/  subscribe; struct seq_midisynth* private_data; int /*<<< orphan*/  owner; int /*<<< orphan*/  subname; void* stream; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  pcallbacks ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_port_info ) (struct snd_rawmidi*,unsigned int,struct snd_seq_port_info*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SNDRV_RAWMIDI_DEVICES ; 
 int SNDRV_RAWMIDI_INFO_DUPLEX ; 
 int SNDRV_RAWMIDI_INFO_INPUT ; 
 int SNDRV_RAWMIDI_INFO_OUTPUT ; 
 void* SNDRV_RAWMIDI_STREAM_INPUT ; 
 void* SNDRV_RAWMIDI_STREAM_OUTPUT ; 
 int /*<<< orphan*/  SNDRV_SEQ_IOCTL_CREATE_PORT ; 
 int SNDRV_SEQ_PORT_CAP_DUPLEX ; 
 int SNDRV_SEQ_PORT_CAP_READ ; 
 int SNDRV_SEQ_PORT_CAP_SUBS_READ ; 
 int SNDRV_SEQ_PORT_CAP_SUBS_WRITE ; 
 int SNDRV_SEQ_PORT_CAP_SYNC_READ ; 
 int SNDRV_SEQ_PORT_CAP_SYNC_WRITE ; 
 int SNDRV_SEQ_PORT_CAP_WRITE ; 
 int SNDRV_SEQ_PORT_FLG_GIVEN_PORT ; 
 int SNDRV_SEQ_PORT_TYPE_HARDWARE ; 
 int SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC ; 
 int SNDRV_SEQ_PORT_TYPE_PORT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  event_process_midi ; 
 struct snd_seq_port_info* FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_port_info*) ; 
 struct snd_seq_port_info* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct snd_seq_port_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_seq_port_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  midisynth_subscribe ; 
 int /*<<< orphan*/  midisynth_unsubscribe ; 
 int /*<<< orphan*/  midisynth_unuse ; 
 int /*<<< orphan*/  midisynth_use ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  register_mutex ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct snd_card*,struct snd_seq_port_info*) ; 
 scalar_t__ FUNC9 (struct snd_card*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ,struct snd_seq_port_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_seq_port_info*) ; 
 scalar_t__ FUNC13 (struct snd_seq_port_info*,struct snd_card*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct snd_rawmidi*,unsigned int,struct snd_seq_port_info*) ; 
 struct snd_seq_port_info** synths ; 
 struct snd_seq_device* FUNC18 (struct device*) ; 

__attribute__((used)) static int
FUNC19(struct device *_dev)
{
	struct snd_seq_device *dev = FUNC18(_dev);
	struct seq_midisynth_client *client;
	struct seq_midisynth *msynth, *ms;
	struct snd_seq_port_info *port;
	struct snd_rawmidi_info *info;
	struct snd_rawmidi *rmidi = dev->private_data;
	int newclient = 0;
	unsigned int p, ports;
	struct snd_seq_port_callback pcallbacks;
	struct snd_card *card = dev->card;
	int device = dev->device;
	unsigned int input_count = 0, output_count = 0;

	if (FUNC7(!card || device < 0 || device >= SNDRV_RAWMIDI_DEVICES))
		return -EINVAL;
	info = FUNC2(sizeof(*info), GFP_KERNEL);
	if (! info)
		return -ENOMEM;
	info->device = device;
	info->stream = SNDRV_RAWMIDI_STREAM_OUTPUT;
	info->subdevice = 0;
	if (FUNC8(card, info) >= 0)
		output_count = info->subdevices_count;
	info->stream = SNDRV_RAWMIDI_STREAM_INPUT;
	if (FUNC8(card, info) >= 0) {
		input_count = info->subdevices_count;
	}
	ports = output_count;
	if (ports < input_count)
		ports = input_count;
	if (ports == 0) {
		FUNC1(info);
		return -ENODEV;
	}
	if (ports > (256 / SNDRV_RAWMIDI_DEVICES))
		ports = 256 / SNDRV_RAWMIDI_DEVICES;

	FUNC5(&register_mutex);
	client = synths[card->number];
	if (client == NULL) {
		newclient = 1;
		client = FUNC3(sizeof(*client), GFP_KERNEL);
		if (client == NULL) {
			FUNC6(&register_mutex);
			FUNC1(info);
			return -ENOMEM;
		}
		client->seq_client =
			FUNC9(
				card, 0, "%s", card->shortname[0] ?
				(const char *)card->shortname : "External MIDI");
		if (client->seq_client < 0) {
			FUNC1(client);
			FUNC6(&register_mutex);
			FUNC1(info);
			return -ENOMEM;
		}
	}

	msynth = FUNC0(ports, sizeof(struct seq_midisynth), GFP_KERNEL);
	port = FUNC2(sizeof(*port), GFP_KERNEL);
	if (msynth == NULL || port == NULL)
		goto __nomem;

	for (p = 0; p < ports; p++) {
		ms = &msynth[p];

		if (FUNC13(ms, card, device, p) < 0)
			goto __nomem;

		/* declare port */
		FUNC4(port, 0, sizeof(*port));
		port->addr.client = client->seq_client;
		port->addr.port = device * (256 / SNDRV_RAWMIDI_DEVICES) + p;
		port->flags = SNDRV_SEQ_PORT_FLG_GIVEN_PORT;
		FUNC4(info, 0, sizeof(*info));
		info->device = device;
		if (p < output_count)
			info->stream = SNDRV_RAWMIDI_STREAM_OUTPUT;
		else
			info->stream = SNDRV_RAWMIDI_STREAM_INPUT;
		info->subdevice = p;
		if (FUNC8(card, info) >= 0)
			FUNC16(port->name, info->subname);
		if (! port->name[0]) {
			if (info->name[0]) {
				if (ports > 1)
					FUNC14(port->name, sizeof(port->name), "%s-%u", info->name, p);
				else
					FUNC14(port->name, sizeof(port->name), "%s", info->name);
			} else {
				/* last resort */
				if (ports > 1)
					FUNC15(port->name, "MIDI %d-%d-%u", card->number, device, p);
				else
					FUNC15(port->name, "MIDI %d-%d", card->number, device);
			}
		}
		if ((info->flags & SNDRV_RAWMIDI_INFO_OUTPUT) && p < output_count)
			port->capability |= SNDRV_SEQ_PORT_CAP_WRITE | SNDRV_SEQ_PORT_CAP_SYNC_WRITE | SNDRV_SEQ_PORT_CAP_SUBS_WRITE;
		if ((info->flags & SNDRV_RAWMIDI_INFO_INPUT) && p < input_count)
			port->capability |= SNDRV_SEQ_PORT_CAP_READ | SNDRV_SEQ_PORT_CAP_SYNC_READ | SNDRV_SEQ_PORT_CAP_SUBS_READ;
		if ((port->capability & (SNDRV_SEQ_PORT_CAP_WRITE|SNDRV_SEQ_PORT_CAP_READ)) == (SNDRV_SEQ_PORT_CAP_WRITE|SNDRV_SEQ_PORT_CAP_READ) &&
		    info->flags & SNDRV_RAWMIDI_INFO_DUPLEX)
			port->capability |= SNDRV_SEQ_PORT_CAP_DUPLEX;
		port->type = SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC
			| SNDRV_SEQ_PORT_TYPE_HARDWARE
			| SNDRV_SEQ_PORT_TYPE_PORT;
		port->midi_channels = 16;
		FUNC4(&pcallbacks, 0, sizeof(pcallbacks));
		pcallbacks.owner = THIS_MODULE;
		pcallbacks.private_data = ms;
		pcallbacks.subscribe = midisynth_subscribe;
		pcallbacks.unsubscribe = midisynth_unsubscribe;
		pcallbacks.use = midisynth_use;
		pcallbacks.unuse = midisynth_unuse;
		pcallbacks.event_input = event_process_midi;
		port->kernel = &pcallbacks;
		if (rmidi->ops && rmidi->ops->get_port_info)
			rmidi->ops->get_port_info(rmidi, p, port);
		if (FUNC11(client->seq_client, SNDRV_SEQ_IOCTL_CREATE_PORT, port)<0)
			goto __nomem;
		ms->seq_client = client->seq_client;
		ms->seq_port = port->addr.port;
	}
	client->ports_per_device[device] = ports;
	client->ports[device] = msynth;
	client->num_ports++;
	if (newclient)
		synths[card->number] = client;
	FUNC6(&register_mutex);
	FUNC1(info);
	FUNC1(port);
	return 0;	/* success */

      __nomem:
	if (msynth != NULL) {
	      	for (p = 0; p < ports; p++)
	      		FUNC12(&msynth[p]);
		FUNC1(msynth);
	}
	if (newclient) {
		FUNC10(client->seq_client);
		FUNC1(client);
	}
	FUNC1(info);
	FUNC1(port);
	FUNC6(&register_mutex);
	return -ENOMEM;
}