
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int version ;
struct snd_efw_phys_grp {int dummy; } ;
struct snd_efw_hwinfo {int arm_version; char* model_name; char* vendor_name; int guid_hi; char* guid_lo; int flags; int min_sample_rate; int max_sample_rate; scalar_t__ midi_out_ports; scalar_t__ midi_in_ports; scalar_t__ amdtp_tx_pcm_channels; scalar_t__ amdtp_tx_pcm_channels_2x; scalar_t__ amdtp_tx_pcm_channels_4x; scalar_t__ amdtp_rx_pcm_channels; scalar_t__ amdtp_rx_pcm_channels_2x; scalar_t__ amdtp_rx_pcm_channels_4x; int phys_in_grp_count; int phys_out_grp_count; scalar_t__ type; int phys_out_grps; int phys_in_grps; int phys_out; int phys_in; } ;
struct snd_efw {int firmware_version; int resp_addr_changable; scalar_t__ midi_out_ports; scalar_t__ midi_in_ports; scalar_t__* pcm_capture_channels; scalar_t__* pcm_playback_channels; int phys_in_grp_count; int phys_out_grp_count; int is_af9; int is_fireworks3; int phys_out_grps; int phys_in_grps; int phys_out; int phys_in; int supported_sampling_rate; TYPE_2__* unit; TYPE_1__* card; } ;
struct fw_device {int max_speed; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_3__ {int longname; int mixername; int shortname; int driver; } ;


 scalar_t__ AM824_MAX_CHANNELS_FOR_PCM ;
 int BIT (int ) ;
 int EIO ;
 int ENOMEM ;
 int ENOSYS ;
 int FLAG_RESP_ADDR_CHANGABLE ;
 int GFP_KERNEL ;
 int HWINFO_MAX_CAPS_GROUPS ;
 scalar_t__ MODEL_ECHO_AUDIOFIRE_2 ;
 scalar_t__ MODEL_ECHO_AUDIOFIRE_4 ;
 scalar_t__ MODEL_ECHO_AUDIOFIRE_9 ;
 scalar_t__ MODEL_GIBSON_GOLDTOP ;
 scalar_t__ MODEL_GIBSON_RIP ;
 int SNDRV_PCM_RATE_176400 ;
 int SNDRV_PCM_RATE_192000 ;
 int SNDRV_PCM_RATE_22050 ;
 int SNDRV_PCM_RATE_32000 ;
 int SNDRV_PCM_RATE_44100 ;
 int SNDRV_PCM_RATE_48000 ;
 int SNDRV_PCM_RATE_88200 ;
 int SNDRV_PCM_RATE_96000 ;
 scalar_t__ SND_EFW_MAX_MIDI_IN_PORTS ;
 scalar_t__ SND_EFW_MAX_MIDI_OUT_PORTS ;
 int dev_name (int *) ;
 struct fw_device* fw_parent_device (TYPE_2__*) ;
 int kfree (struct snd_efw_hwinfo*) ;
 struct snd_efw_hwinfo* kzalloc (int,int ) ;
 int memcpy (int *,int ,int) ;
 int snd_efw_command_get_hwinfo (struct snd_efw*,struct snd_efw_hwinfo*) ;
 int snprintf (char*,int,char*,...) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int
get_hardware_info(struct snd_efw *efw)
{
 struct fw_device *fw_dev = fw_parent_device(efw->unit);
 struct snd_efw_hwinfo *hwinfo;
 char version[12] = {0};
 int err;

 hwinfo = kzalloc(sizeof(struct snd_efw_hwinfo), GFP_KERNEL);
 if (hwinfo == ((void*)0))
  return -ENOMEM;

 err = snd_efw_command_get_hwinfo(efw, hwinfo);
 if (err < 0)
  goto end;


 snprintf(version, sizeof(version), "%u.%u",
   (hwinfo->arm_version >> 24) & 0xff,
   (hwinfo->arm_version >> 16) & 0xff);
 efw->firmware_version = hwinfo->arm_version;

 strcpy(efw->card->driver, "Fireworks");
 strcpy(efw->card->shortname, hwinfo->model_name);
 strcpy(efw->card->mixername, hwinfo->model_name);
 snprintf(efw->card->longname, sizeof(efw->card->longname),
   "%s %s v%s, GUID %08x%08x at %s, S%d",
   hwinfo->vendor_name, hwinfo->model_name, version,
   hwinfo->guid_hi, hwinfo->guid_lo,
   dev_name(&efw->unit->device), 100 << fw_dev->max_speed);

 if (hwinfo->flags & BIT(FLAG_RESP_ADDR_CHANGABLE))
  efw->resp_addr_changable = 1;

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


 if (hwinfo->midi_out_ports > SND_EFW_MAX_MIDI_OUT_PORTS ||
     hwinfo->midi_in_ports > SND_EFW_MAX_MIDI_IN_PORTS) {
  err = -EIO;
  goto end;
 }
 efw->midi_out_ports = hwinfo->midi_out_ports;
 efw->midi_in_ports = hwinfo->midi_in_ports;

 if (hwinfo->amdtp_tx_pcm_channels > AM824_MAX_CHANNELS_FOR_PCM ||
     hwinfo->amdtp_tx_pcm_channels_2x > AM824_MAX_CHANNELS_FOR_PCM ||
     hwinfo->amdtp_tx_pcm_channels_4x > AM824_MAX_CHANNELS_FOR_PCM ||
     hwinfo->amdtp_rx_pcm_channels > AM824_MAX_CHANNELS_FOR_PCM ||
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


 if (hwinfo->phys_in_grp_count > HWINFO_MAX_CAPS_GROUPS ||
     hwinfo->phys_out_grp_count > HWINFO_MAX_CAPS_GROUPS) {
  err = -EIO;
  goto end;
 }
 efw->phys_in = hwinfo->phys_in;
 efw->phys_out = hwinfo->phys_out;
 efw->phys_in_grp_count = hwinfo->phys_in_grp_count;
 efw->phys_out_grp_count = hwinfo->phys_out_grp_count;
 memcpy(&efw->phys_in_grps, hwinfo->phys_in_grps,
        sizeof(struct snd_efw_phys_grp) * hwinfo->phys_in_grp_count);
 memcpy(&efw->phys_out_grps, hwinfo->phys_out_grps,
        sizeof(struct snd_efw_phys_grp) * hwinfo->phys_out_grp_count);


 if (hwinfo->type == MODEL_ECHO_AUDIOFIRE_9)
  efw->is_af9 = 1;

 if (hwinfo->type == MODEL_ECHO_AUDIOFIRE_2 ||
     hwinfo->type == MODEL_ECHO_AUDIOFIRE_4 ||
     hwinfo->type == MODEL_ECHO_AUDIOFIRE_9 ||
     hwinfo->type == MODEL_GIBSON_RIP ||
     hwinfo->type == MODEL_GIBSON_GOLDTOP)
  efw->is_fireworks3 = 1;
end:
 kfree(hwinfo);
 return err;
}
