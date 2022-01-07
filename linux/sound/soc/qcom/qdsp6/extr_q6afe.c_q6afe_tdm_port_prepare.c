
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int slot_mask; int slot_width; int nslots_per_frame; int sync_src; int sync_mode; int data_format; int bit_width; int sample_rate; int num_channels; int tdm_cfg_minor_version; } ;
union afe_port_config {TYPE_1__ tdm_cfg; } ;
typedef int u16 ;
struct q6afe_tdm_cfg {int ch_mapping; int data_align_type; int bit_width; int num_channels; int slot_mask; int slot_width; int nslots_per_frame; int sync_src; int sync_mode; int data_format; int sample_rate; } ;
struct q6afe_port {TYPE_2__* scfg; union afe_port_config port_cfg; } ;
struct TYPE_4__ {int ch_mapping; int data_align_type; int bitwidth; int num_channels; int minor_version; } ;


 int AFE_API_VERSION_SLOT_MAPPING_CONFIG ;
 int AFE_API_VERSION_TDM_CONFIG ;
 int AFE_PORT_MAX_AUDIO_CHAN_CNT ;
 int GFP_KERNEL ;
 TYPE_2__* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;

void q6afe_tdm_port_prepare(struct q6afe_port *port,
        struct q6afe_tdm_cfg *cfg)
{
 union afe_port_config *pcfg = &port->port_cfg;

 pcfg->tdm_cfg.tdm_cfg_minor_version = AFE_API_VERSION_TDM_CONFIG;
 pcfg->tdm_cfg.num_channels = cfg->num_channels;
 pcfg->tdm_cfg.sample_rate = cfg->sample_rate;
 pcfg->tdm_cfg.bit_width = cfg->bit_width;
 pcfg->tdm_cfg.data_format = cfg->data_format;
 pcfg->tdm_cfg.sync_mode = cfg->sync_mode;
 pcfg->tdm_cfg.sync_src = cfg->sync_src;
 pcfg->tdm_cfg.nslots_per_frame = cfg->nslots_per_frame;

 pcfg->tdm_cfg.slot_width = cfg->slot_width;
 pcfg->tdm_cfg.slot_mask = cfg->slot_mask;
 port->scfg = kzalloc(sizeof(*port->scfg), GFP_KERNEL);
 if (!port->scfg)
  return;

 port->scfg->minor_version = AFE_API_VERSION_SLOT_MAPPING_CONFIG;
 port->scfg->num_channels = cfg->num_channels;
 port->scfg->bitwidth = cfg->bit_width;
 port->scfg->data_align_type = cfg->data_align_type;
 memcpy(port->scfg->ch_mapping, cfg->ch_mapping,
   sizeof(u16) * AFE_PORT_MAX_AUDIO_CHAN_CNT);
}
