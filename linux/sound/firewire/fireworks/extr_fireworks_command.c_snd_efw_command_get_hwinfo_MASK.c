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
struct snd_efw_hwinfo {char* vendor_name; char* model_name; int /*<<< orphan*/  amdtp_tx_pcm_channels_4x; int /*<<< orphan*/  amdtp_rx_pcm_channels_4x; int /*<<< orphan*/  amdtp_tx_pcm_channels_2x; int /*<<< orphan*/  amdtp_rx_pcm_channels_2x; int /*<<< orphan*/  fpga_version; int /*<<< orphan*/  mixer_capture_channels; int /*<<< orphan*/  mixer_playback_channels; int /*<<< orphan*/  arm_version; int /*<<< orphan*/  dsp_version; int /*<<< orphan*/  min_sample_rate; int /*<<< orphan*/  max_sample_rate; int /*<<< orphan*/  midi_in_ports; int /*<<< orphan*/  midi_out_ports; int /*<<< orphan*/  phys_in_grp_count; int /*<<< orphan*/  phys_out_grp_count; int /*<<< orphan*/  phys_in; int /*<<< orphan*/  phys_out; int /*<<< orphan*/  amdtp_tx_pcm_channels; int /*<<< orphan*/  amdtp_rx_pcm_channels; int /*<<< orphan*/  supported_clocks; int /*<<< orphan*/  version; int /*<<< orphan*/  type; int /*<<< orphan*/  guid_lo; int /*<<< orphan*/  guid_hi; int /*<<< orphan*/  flags; } ;
struct snd_efw {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  EFC_CAT_HWINFO ; 
 int /*<<< orphan*/  EFC_CMD_HWINFO_GET_CAPS ; 
 int HWINFO_NAME_SIZE_BYTES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct snd_efw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC2(struct snd_efw *efw,
			       struct snd_efw_hwinfo *hwinfo)
{
	int err;

	err  = FUNC1(efw, EFC_CAT_HWINFO,
			       EFC_CMD_HWINFO_GET_CAPS,
			       NULL, 0, (__be32 *)hwinfo, sizeof(*hwinfo));
	if (err < 0)
		goto end;

	FUNC0(&hwinfo->flags);
	FUNC0(&hwinfo->guid_hi);
	FUNC0(&hwinfo->guid_lo);
	FUNC0(&hwinfo->type);
	FUNC0(&hwinfo->version);
	FUNC0(&hwinfo->supported_clocks);
	FUNC0(&hwinfo->amdtp_rx_pcm_channels);
	FUNC0(&hwinfo->amdtp_tx_pcm_channels);
	FUNC0(&hwinfo->phys_out);
	FUNC0(&hwinfo->phys_in);
	FUNC0(&hwinfo->phys_out_grp_count);
	FUNC0(&hwinfo->phys_in_grp_count);
	FUNC0(&hwinfo->midi_out_ports);
	FUNC0(&hwinfo->midi_in_ports);
	FUNC0(&hwinfo->max_sample_rate);
	FUNC0(&hwinfo->min_sample_rate);
	FUNC0(&hwinfo->dsp_version);
	FUNC0(&hwinfo->arm_version);
	FUNC0(&hwinfo->mixer_playback_channels);
	FUNC0(&hwinfo->mixer_capture_channels);
	FUNC0(&hwinfo->fpga_version);
	FUNC0(&hwinfo->amdtp_rx_pcm_channels_2x);
	FUNC0(&hwinfo->amdtp_tx_pcm_channels_2x);
	FUNC0(&hwinfo->amdtp_rx_pcm_channels_4x);
	FUNC0(&hwinfo->amdtp_tx_pcm_channels_4x);

	/* ensure terminated */
	hwinfo->vendor_name[HWINFO_NAME_SIZE_BYTES - 1] = '\0';
	hwinfo->model_name[HWINFO_NAME_SIZE_BYTES  - 1] = '\0';
end:
	return err;
}