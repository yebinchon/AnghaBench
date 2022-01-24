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
struct snd_usb_midi {TYPE_1__* card; TYPE_2__* dev; } ;
struct snd_rawmidi_substream {int /*<<< orphan*/  name; } ;
struct port_info {char* name; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  shortname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct port_info* FUNC1 (struct snd_usb_midi*,int) ; 
 struct snd_rawmidi_substream* FUNC2 (struct snd_usb_midi*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct snd_usb_midi *umidi,
				       int stream, int number,
				       struct snd_rawmidi_substream **rsubstream)
{
	struct port_info *port_info;
	const char *name_format;

	struct snd_rawmidi_substream *substream =
		FUNC2(umidi, stream, number);
	if (!substream) {
		FUNC0(&umidi->dev->dev, "substream %d:%d not found\n", stream,
			number);
		return;
	}

	/* TODO: read port name from jack descriptor */
	port_info = FUNC1(umidi, number);
	name_format = port_info ? port_info->name : "%s MIDI %d";
	FUNC3(substream->name, sizeof(substream->name),
		 name_format, umidi->card->shortname, number + 1);

	*rsubstream = substream;
}