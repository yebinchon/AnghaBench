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
typedef  scalar_t__ u8 ;
struct snd_oxfw_stream_formation {scalar_t__ midi; } ;
struct snd_oxfw {int midi_input_ports; int has_output; int midi_output_ports; scalar_t__** rx_stream_formats; scalar_t__** tx_stream_formats; TYPE_1__* unit; } ;
struct TYPE_2__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVC_GENERAL_PLUG_DIR_IN ; 
 int /*<<< orphan*/  AVC_GENERAL_PLUG_DIR_OUT ; 
 int AVC_PLUG_INFO_BUF_BYTES ; 
 int ENOSYS ; 
 unsigned int SND_OXFW_STREAM_FORMAT_ENTRIES ; 
 int FUNC0 (TYPE_1__*,int,int,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct snd_oxfw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__*,struct snd_oxfw_stream_formation*) ; 

int FUNC4(struct snd_oxfw *oxfw)
{
	u8 plugs[AVC_PLUG_INFO_BUF_BYTES];
	struct snd_oxfw_stream_formation formation;
	u8 *format;
	unsigned int i;
	int err;

	/* the number of plugs for isoc in/out, ext in/out  */
	err = FUNC0(oxfw->unit, 0x1f, 0x07, 0x00, plugs);
	if (err < 0) {
		FUNC1(&oxfw->unit->device,
		"fail to get info for isoc/external in/out plugs: %d\n",
			err);
		goto end;
	} else if ((plugs[0] == 0) && (plugs[1] == 0)) {
		err = -ENOSYS;
		goto end;
	}

	/* use oPCR[0] if exists */
	if (plugs[1] > 0) {
		err = FUNC2(oxfw, AVC_GENERAL_PLUG_DIR_OUT, 0);
		if (err < 0)
			goto end;

		for (i = 0; i < SND_OXFW_STREAM_FORMAT_ENTRIES; i++) {
			format = oxfw->tx_stream_formats[i];
			if (format == NULL)
				continue;
			err = FUNC3(format, &formation);
			if (err < 0)
				continue;

			/* Add one MIDI port. */
			if (formation.midi > 0)
				oxfw->midi_input_ports = 1;
		}

		oxfw->has_output = true;
	}

	/* use iPCR[0] if exists */
	if (plugs[0] > 0) {
		err = FUNC2(oxfw, AVC_GENERAL_PLUG_DIR_IN, 0);
		if (err < 0)
			goto end;

		for (i = 0; i < SND_OXFW_STREAM_FORMAT_ENTRIES; i++) {
			format = oxfw->rx_stream_formats[i];
			if (format == NULL)
				continue;
			err = FUNC3(format, &formation);
			if (err < 0)
				continue;

			/* Add one MIDI port. */
			if (formation.midi > 0)
				oxfw->midi_output_ports = 1;
		}
	}
end:
	return err;
}