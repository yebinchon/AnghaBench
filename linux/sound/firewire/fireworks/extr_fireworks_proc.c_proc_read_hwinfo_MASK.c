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
struct snd_info_entry {struct snd_efw* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct snd_efw_hwinfo {unsigned short guid_hi; unsigned short guid_lo; unsigned short type; unsigned short version; unsigned short vendor_name; unsigned short model_name; unsigned short dsp_version; unsigned short arm_version; unsigned short fpga_version; unsigned short flags; unsigned short max_sample_rate; unsigned short min_sample_rate; unsigned short supported_clocks; unsigned short phys_out; unsigned short phys_in; unsigned short phys_in_grp_count; unsigned short phys_out_grp_count; unsigned short amdtp_rx_pcm_channels; unsigned short amdtp_tx_pcm_channels; unsigned short amdtp_rx_pcm_channels_2x; unsigned short amdtp_tx_pcm_channels_2x; unsigned short amdtp_rx_pcm_channels_4x; unsigned short amdtp_tx_pcm_channels_4x; unsigned short midi_out_ports; unsigned short midi_in_ports; unsigned short mixer_playback_channels; unsigned short mixer_capture_channels; TYPE_1__* phys_out_grps; } ;
struct snd_efw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct snd_efw_hwinfo*) ; 
 struct snd_efw_hwinfo* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct snd_efw*,struct snd_efw_hwinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_info_buffer*,char*,unsigned short,...) ; 

__attribute__((used)) static void
FUNC4(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
	struct snd_efw *efw = entry->private_data;
	unsigned short i;
	struct snd_efw_hwinfo *hwinfo;

	hwinfo = FUNC1(sizeof(struct snd_efw_hwinfo), GFP_KERNEL);
	if (hwinfo == NULL)
		return;

	if (FUNC2(efw, hwinfo) < 0)
		goto end;

	FUNC3(buffer, "guid_hi: 0x%X\n", hwinfo->guid_hi);
	FUNC3(buffer, "guid_lo: 0x%X\n", hwinfo->guid_lo);
	FUNC3(buffer, "type: 0x%X\n", hwinfo->type);
	FUNC3(buffer, "version: 0x%X\n", hwinfo->version);
	FUNC3(buffer, "vendor_name: %s\n", hwinfo->vendor_name);
	FUNC3(buffer, "model_name: %s\n", hwinfo->model_name);

	FUNC3(buffer, "dsp_version: 0x%X\n", hwinfo->dsp_version);
	FUNC3(buffer, "arm_version: 0x%X\n", hwinfo->arm_version);
	FUNC3(buffer, "fpga_version: 0x%X\n", hwinfo->fpga_version);

	FUNC3(buffer, "flags: 0x%X\n", hwinfo->flags);

	FUNC3(buffer, "max_sample_rate: 0x%X\n", hwinfo->max_sample_rate);
	FUNC3(buffer, "min_sample_rate: 0x%X\n", hwinfo->min_sample_rate);
	FUNC3(buffer, "supported_clock: 0x%X\n",
		    hwinfo->supported_clocks);

	FUNC3(buffer, "phys out: 0x%X\n", hwinfo->phys_out);
	FUNC3(buffer, "phys in: 0x%X\n", hwinfo->phys_in);

	FUNC3(buffer, "phys in grps: 0x%X\n",
		    hwinfo->phys_in_grp_count);
	for (i = 0; i < hwinfo->phys_in_grp_count; i++) {
		FUNC3(buffer,
			    "phys in grp[%d]: type 0x%X, count 0x%X\n",
			    i, hwinfo->phys_out_grps[i].type,
			    hwinfo->phys_out_grps[i].count);
	}

	FUNC3(buffer, "phys out grps: 0x%X\n",
		    hwinfo->phys_out_grp_count);
	for (i = 0; i < hwinfo->phys_out_grp_count; i++) {
		FUNC3(buffer,
			    "phys out grps[%d]: type 0x%X, count 0x%X\n",
			    i, hwinfo->phys_out_grps[i].type,
			    hwinfo->phys_out_grps[i].count);
	}

	FUNC3(buffer, "amdtp rx pcm channels 1x: 0x%X\n",
		    hwinfo->amdtp_rx_pcm_channels);
	FUNC3(buffer, "amdtp tx pcm channels 1x: 0x%X\n",
		    hwinfo->amdtp_tx_pcm_channels);
	FUNC3(buffer, "amdtp rx pcm channels 2x: 0x%X\n",
		    hwinfo->amdtp_rx_pcm_channels_2x);
	FUNC3(buffer, "amdtp tx pcm channels 2x: 0x%X\n",
		    hwinfo->amdtp_tx_pcm_channels_2x);
	FUNC3(buffer, "amdtp rx pcm channels 4x: 0x%X\n",
		    hwinfo->amdtp_rx_pcm_channels_4x);
	FUNC3(buffer, "amdtp tx pcm channels 4x: 0x%X\n",
		    hwinfo->amdtp_tx_pcm_channels_4x);

	FUNC3(buffer, "midi out ports: 0x%X\n", hwinfo->midi_out_ports);
	FUNC3(buffer, "midi in ports: 0x%X\n", hwinfo->midi_in_ports);

	FUNC3(buffer, "mixer playback channels: 0x%X\n",
		    hwinfo->mixer_playback_channels);
	FUNC3(buffer, "mixer capture channels: 0x%X\n",
		    hwinfo->mixer_capture_channels);
end:
	FUNC0(hwinfo);
}