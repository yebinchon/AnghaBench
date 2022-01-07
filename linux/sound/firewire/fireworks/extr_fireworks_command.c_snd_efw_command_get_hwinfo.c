
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw_hwinfo {char* vendor_name; char* model_name; int amdtp_tx_pcm_channels_4x; int amdtp_rx_pcm_channels_4x; int amdtp_tx_pcm_channels_2x; int amdtp_rx_pcm_channels_2x; int fpga_version; int mixer_capture_channels; int mixer_playback_channels; int arm_version; int dsp_version; int min_sample_rate; int max_sample_rate; int midi_in_ports; int midi_out_ports; int phys_in_grp_count; int phys_out_grp_count; int phys_in; int phys_out; int amdtp_tx_pcm_channels; int amdtp_rx_pcm_channels; int supported_clocks; int version; int type; int guid_lo; int guid_hi; int flags; } ;
struct snd_efw {int dummy; } ;
typedef int __be32 ;


 int EFC_CAT_HWINFO ;
 int EFC_CMD_HWINFO_GET_CAPS ;
 int HWINFO_NAME_SIZE_BYTES ;
 int be32_to_cpus (int *) ;
 int efw_transaction (struct snd_efw*,int ,int ,int *,int ,int *,int) ;

int snd_efw_command_get_hwinfo(struct snd_efw *efw,
          struct snd_efw_hwinfo *hwinfo)
{
 int err;

 err = efw_transaction(efw, EFC_CAT_HWINFO,
          EFC_CMD_HWINFO_GET_CAPS,
          ((void*)0), 0, (__be32 *)hwinfo, sizeof(*hwinfo));
 if (err < 0)
  goto end;

 be32_to_cpus(&hwinfo->flags);
 be32_to_cpus(&hwinfo->guid_hi);
 be32_to_cpus(&hwinfo->guid_lo);
 be32_to_cpus(&hwinfo->type);
 be32_to_cpus(&hwinfo->version);
 be32_to_cpus(&hwinfo->supported_clocks);
 be32_to_cpus(&hwinfo->amdtp_rx_pcm_channels);
 be32_to_cpus(&hwinfo->amdtp_tx_pcm_channels);
 be32_to_cpus(&hwinfo->phys_out);
 be32_to_cpus(&hwinfo->phys_in);
 be32_to_cpus(&hwinfo->phys_out_grp_count);
 be32_to_cpus(&hwinfo->phys_in_grp_count);
 be32_to_cpus(&hwinfo->midi_out_ports);
 be32_to_cpus(&hwinfo->midi_in_ports);
 be32_to_cpus(&hwinfo->max_sample_rate);
 be32_to_cpus(&hwinfo->min_sample_rate);
 be32_to_cpus(&hwinfo->dsp_version);
 be32_to_cpus(&hwinfo->arm_version);
 be32_to_cpus(&hwinfo->mixer_playback_channels);
 be32_to_cpus(&hwinfo->mixer_capture_channels);
 be32_to_cpus(&hwinfo->fpga_version);
 be32_to_cpus(&hwinfo->amdtp_rx_pcm_channels_2x);
 be32_to_cpus(&hwinfo->amdtp_tx_pcm_channels_2x);
 be32_to_cpus(&hwinfo->amdtp_rx_pcm_channels_4x);
 be32_to_cpus(&hwinfo->amdtp_tx_pcm_channels_4x);


 hwinfo->vendor_name[HWINFO_NAME_SIZE_BYTES - 1] = '\0';
 hwinfo->model_name[HWINFO_NAME_SIZE_BYTES - 1] = '\0';
end:
 return err;
}
