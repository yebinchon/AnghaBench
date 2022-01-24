#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u8 ;
struct snd_bebob_clock_spec {int dummy; } ;
struct snd_bebob {scalar_t__ midi_output_ports; TYPE_2__* unit; scalar_t__ midi_input_ports; TYPE_1__* spec; } ;
typedef  enum avc_bridgeco_plug_type { ____Placeholder_avc_bridgeco_plug_type } avc_bridgeco_plug_type ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {struct snd_bebob_clock_spec* clock; } ;

/* Variables and functions */
 int AVC_BRIDGECO_ADDR_BYTES ; 
 int /*<<< orphan*/  AVC_BRIDGECO_PLUG_DIR_IN ; 
 int /*<<< orphan*/  AVC_BRIDGECO_PLUG_DIR_OUT ; 
 int AVC_BRIDGECO_PLUG_TYPE_ISOC ; 
 int AVC_BRIDGECO_PLUG_TYPE_MIDI ; 
 int /*<<< orphan*/  AVC_BRIDGECO_PLUG_UNIT_EXT ; 
 int /*<<< orphan*/  AVC_BRIDGECO_PLUG_UNIT_ISOC ; 
 int AVC_PLUG_INFO_BUF_BYTES ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC1 (TYPE_2__*,unsigned int*,int*) ; 
 int FUNC2 (TYPE_2__*,int,int,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,unsigned int,...) ; 
 int FUNC4 (struct snd_bebob*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct snd_bebob*) ; 

int FUNC6(struct snd_bebob *bebob)
{
	const struct snd_bebob_clock_spec *clk_spec = bebob->spec->clock;
	u8 plugs[AVC_PLUG_INFO_BUF_BYTES], addr[AVC_BRIDGECO_ADDR_BYTES];
	enum avc_bridgeco_plug_type type;
	unsigned int i;
	int err;

	/* the number of plugs for isoc in/out, ext in/out  */
	err = FUNC2(bebob->unit, 0x1f, 0x07, 0x00, plugs);
	if (err < 0) {
		FUNC3(&bebob->unit->device,
		"fail to get info for isoc/external in/out plugs: %d\n",
			err);
		goto end;
	}

	/*
	 * This module supports at least one isoc input plug and one isoc
	 * output plug.
	 */
	if ((plugs[0] == 0) || (plugs[1] == 0)) {
		err = -ENOSYS;
		goto end;
	}

	FUNC0(addr, AVC_BRIDGECO_PLUG_DIR_IN,
				    AVC_BRIDGECO_PLUG_UNIT_ISOC, 0);
	err = FUNC1(bebob->unit, addr, &type);
	if (err < 0) {
		FUNC3(&bebob->unit->device,
			"fail to get type for isoc in plug 0: %d\n", err);
		goto end;
	} else if (type != AVC_BRIDGECO_PLUG_TYPE_ISOC) {
		err = -ENOSYS;
		goto end;
	}
	err = FUNC4(bebob, AVC_BRIDGECO_PLUG_DIR_IN, 0);
	if (err < 0)
		goto end;

	FUNC0(addr, AVC_BRIDGECO_PLUG_DIR_OUT,
				    AVC_BRIDGECO_PLUG_UNIT_ISOC, 0);
	err = FUNC1(bebob->unit, addr, &type);
	if (err < 0) {
		FUNC3(&bebob->unit->device,
			"fail to get type for isoc out plug 0: %d\n", err);
		goto end;
	} else if (type != AVC_BRIDGECO_PLUG_TYPE_ISOC) {
		err = -ENOSYS;
		goto end;
	}
	err = FUNC4(bebob, AVC_BRIDGECO_PLUG_DIR_OUT, 0);
	if (err < 0)
		goto end;

	/* count external input plugs for MIDI */
	bebob->midi_input_ports = 0;
	for (i = 0; i < plugs[2]; i++) {
		FUNC0(addr, AVC_BRIDGECO_PLUG_DIR_IN,
					    AVC_BRIDGECO_PLUG_UNIT_EXT, i);
		err = FUNC1(bebob->unit, addr, &type);
		if (err < 0) {
			FUNC3(&bebob->unit->device,
			"fail to get type for external in plug %d: %d\n",
				i, err);
			goto end;
		} else if (type == AVC_BRIDGECO_PLUG_TYPE_MIDI) {
			bebob->midi_input_ports++;
		}
	}

	/* count external output plugs for MIDI */
	bebob->midi_output_ports = 0;
	for (i = 0; i < plugs[3]; i++) {
		FUNC0(addr, AVC_BRIDGECO_PLUG_DIR_OUT,
					    AVC_BRIDGECO_PLUG_UNIT_EXT, i);
		err = FUNC1(bebob->unit, addr, &type);
		if (err < 0) {
			FUNC3(&bebob->unit->device,
			"fail to get type for external out plug %d: %d\n",
				i, err);
			goto end;
		} else if (type == AVC_BRIDGECO_PLUG_TYPE_MIDI) {
			bebob->midi_output_ports++;
		}
	}

	/* for check source of clock later */
	if (!clk_spec)
		err = FUNC5(bebob);
end:
	return err;
}