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
typedef  int /*<<< orphan*/  version ;
struct snd_efw_phys_grp {int dummy; } ;
struct snd_efw_hwinfo {int arm_version; char* model_name; char* vendor_name; int guid_hi; char* guid_lo; int flags; int min_sample_rate; int max_sample_rate; scalar_t__ midi_out_ports; scalar_t__ midi_in_ports; scalar_t__ amdtp_tx_pcm_channels; scalar_t__ amdtp_tx_pcm_channels_2x; scalar_t__ amdtp_tx_pcm_channels_4x; scalar_t__ amdtp_rx_pcm_channels; scalar_t__ amdtp_rx_pcm_channels_2x; scalar_t__ amdtp_rx_pcm_channels_4x; int phys_in_grp_count; int phys_out_grp_count; scalar_t__ type; int /*<<< orphan*/  phys_out_grps; int /*<<< orphan*/  phys_in_grps; int /*<<< orphan*/  phys_out; int /*<<< orphan*/  phys_in; } ;
struct snd_efw {int firmware_version; int resp_addr_changable; scalar_t__ midi_out_ports; scalar_t__ midi_in_ports; scalar_t__* pcm_capture_channels; scalar_t__* pcm_playback_channels; int phys_in_grp_count; int phys_out_grp_count; int is_af9; int is_fireworks3; int /*<<< orphan*/  phys_out_grps; int /*<<< orphan*/  phys_in_grps; int /*<<< orphan*/  phys_out; int /*<<< orphan*/  phys_in; int /*<<< orphan*/  supported_sampling_rate; TYPE_2__* unit; TYPE_1__* card; } ;
struct fw_device {int max_speed; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct TYPE_3__ {int /*<<< orphan*/  longname; int /*<<< orphan*/  mixername; int /*<<< orphan*/  shortname; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 scalar_t__ AM824_MAX_CHANNELS_FOR_PCM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FLAG_RESP_ADDR_CHANGABLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HWINFO_MAX_CAPS_GROUPS ; 
 scalar_t__ MODEL_ECHO_AUDIOFIRE_2 ; 
 scalar_t__ MODEL_ECHO_AUDIOFIRE_4 ; 
 scalar_t__ MODEL_ECHO_AUDIOFIRE_9 ; 
 scalar_t__ MODEL_GIBSON_GOLDTOP ; 
 scalar_t__ MODEL_GIBSON_RIP ; 
 int /*<<< orphan*/  SNDRV_PCM_RATE_176400 ; 
 int /*<<< orphan*/  SNDRV_PCM_RATE_192000 ; 
 int /*<<< orphan*/  SNDRV_PCM_RATE_22050 ; 
 int /*<<< orphan*/  SNDRV_PCM_RATE_32000 ; 
 int /*<<< orphan*/  SNDRV_PCM_RATE_44100 ; 
 int /*<<< orphan*/  SNDRV_PCM_RATE_48000 ; 
 int /*<<< orphan*/  SNDRV_PCM_RATE_88200 ; 
 int /*<<< orphan*/  SNDRV_PCM_RATE_96000 ; 
 scalar_t__ SND_EFW_MAX_MIDI_IN_PORTS ; 
 scalar_t__ SND_EFW_MAX_MIDI_OUT_PORTS ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct fw_device* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_efw_hwinfo*) ; 
 struct snd_efw_hwinfo* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct snd_efw*,struct snd_efw_hwinfo*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC9(struct snd_efw *efw)
{
	struct fw_device *fw_dev = FUNC2(efw->unit);
	struct snd_efw_hwinfo *hwinfo;
	char version[12] = {0};
	int err;

	hwinfo = FUNC4(sizeof(struct snd_efw_hwinfo), GFP_KERNEL);
	if (hwinfo == NULL)
		return -ENOMEM;

	err = FUNC6(efw, hwinfo);
	if (err < 0)
		goto end;

	/* firmware version for communication chipset */
	FUNC7(version, sizeof(version), "%u.%u",
		 (hwinfo->arm_version >> 24) & 0xff,
		 (hwinfo->arm_version >> 16) & 0xff);
	efw->firmware_version = hwinfo->arm_version;

	FUNC8(efw->card->driver, "Fireworks");
	FUNC8(efw->card->shortname, hwinfo->model_name);
	FUNC8(efw->card->mixername, hwinfo->model_name);
	FUNC7(efw->card->longname, sizeof(efw->card->longname),
		 "%s %s v%s, GUID %08x%08x at %s, S%d",
		 hwinfo->vendor_name, hwinfo->model_name, version,
		 hwinfo->guid_hi, hwinfo->guid_lo,
		 FUNC1(&efw->unit->device), 100 << fw_dev->max_speed);

	if (hwinfo->flags & FUNC0(FLAG_RESP_ADDR_CHANGABLE))
		efw->resp_addr_changable = true;

	efw->supported_sampling_rate = 0;
	if ((hwinfo->min_sample_rate <= 22050)
	 && (22050 <= hwinfo->max_sample_rate))
		efw->supported_sampling_rate |= SNDRV_PCM_RATE_22050;
	if ((hwinfo->min_sample_rate <= 32000)
	 && (32000 <= hwinfo->max_sample_rate))
		efw->supported_sampling_rate |= SNDRV_PCM_RATE_32000;
	if ((hwinfo->min_sample_rate <= 44100)
	 && (44100 <= hwinfo->max_sample_rate))
		efw->supported_sampling_rate |= SNDRV_PCM_RATE_44100;
	if ((hwinfo->min_sample_rate <= 48000)
	 && (48000 <= hwinfo->max_sample_rate))
		efw->supported_sampling_rate |= SNDRV_PCM_RATE_48000;
	if ((hwinfo->min_sample_rate <= 88200)
	 && (88200 <= hwinfo->max_sample_rate))
		efw->supported_sampling_rate |= SNDRV_PCM_RATE_88200;
	if ((hwinfo->min_sample_rate <= 96000)
	 && (96000 <= hwinfo->max_sample_rate))
		efw->supported_sampling_rate |= SNDRV_PCM_RATE_96000;
	if ((hwinfo->min_sample_rate <= 176400)
	 && (176400 <= hwinfo->max_sample_rate))
		efw->supported_sampling_rate |= SNDRV_PCM_RATE_176400;
	if ((hwinfo->min_sample_rate <= 192000)
	 && (192000 <= hwinfo->max_sample_rate))
		efw->supported_sampling_rate |= SNDRV_PCM_RATE_192000;

	/* the number of MIDI ports, not of MIDI conformant data channels */
	if (hwinfo->midi_out_ports > SND_EFW_MAX_MIDI_OUT_PORTS ||
	    hwinfo->midi_in_ports > SND_EFW_MAX_MIDI_IN_PORTS) {
		err = -EIO;
		goto end;
	}
	efw->midi_out_ports = hwinfo->midi_out_ports;
	efw->midi_in_ports = hwinfo->midi_in_ports;

	if (hwinfo->amdtp_tx_pcm_channels    > AM824_MAX_CHANNELS_FOR_PCM ||
	    hwinfo->amdtp_tx_pcm_channels_2x > AM824_MAX_CHANNELS_FOR_PCM ||
	    hwinfo->amdtp_tx_pcm_channels_4x > AM824_MAX_CHANNELS_FOR_PCM ||
	    hwinfo->amdtp_rx_pcm_channels    > AM824_MAX_CHANNELS_FOR_PCM ||
	    hwinfo->amdtp_rx_pcm_channels_2x > AM824_MAX_CHANNELS_FOR_PCM ||
	    hwinfo->amdtp_rx_pcm_channels_4x > AM824_MAX_CHANNELS_FOR_PCM) {
		err = -ENOSYS;
		goto end;
	}
	efw->pcm_capture_channels[0] = hwinfo->amdtp_tx_pcm_channels;
	efw->pcm_capture_channels[1] = hwinfo->amdtp_tx_pcm_channels_2x;
	efw->pcm_capture_channels[2] = hwinfo->amdtp_tx_pcm_channels_4x;
	efw->pcm_playback_channels[0] = hwinfo->amdtp_rx_pcm_channels;
	efw->pcm_playback_channels[1] = hwinfo->amdtp_rx_pcm_channels_2x;
	efw->pcm_playback_channels[2] = hwinfo->amdtp_rx_pcm_channels_4x;

	/* Hardware metering. */
	if (hwinfo->phys_in_grp_count  > HWINFO_MAX_CAPS_GROUPS ||
	    hwinfo->phys_out_grp_count > HWINFO_MAX_CAPS_GROUPS) {
		err = -EIO;
		goto end;
	}
	efw->phys_in = hwinfo->phys_in;
	efw->phys_out = hwinfo->phys_out;
	efw->phys_in_grp_count = hwinfo->phys_in_grp_count;
	efw->phys_out_grp_count = hwinfo->phys_out_grp_count;
	FUNC5(&efw->phys_in_grps, hwinfo->phys_in_grps,
	       sizeof(struct snd_efw_phys_grp) * hwinfo->phys_in_grp_count);
	FUNC5(&efw->phys_out_grps, hwinfo->phys_out_grps,
	       sizeof(struct snd_efw_phys_grp) * hwinfo->phys_out_grp_count);

	/* AudioFire8 (since 2009) and AudioFirePre8 */
	if (hwinfo->type == MODEL_ECHO_AUDIOFIRE_9)
		efw->is_af9 = true;
	/* These models uses the same firmware. */
	if (hwinfo->type == MODEL_ECHO_AUDIOFIRE_2 ||
	    hwinfo->type == MODEL_ECHO_AUDIOFIRE_4 ||
	    hwinfo->type == MODEL_ECHO_AUDIOFIRE_9 ||
	    hwinfo->type == MODEL_GIBSON_RIP ||
	    hwinfo->type == MODEL_GIBSON_GOLDTOP)
		efw->is_fireworks3 = true;
end:
	FUNC3(hwinfo);
	return err;
}