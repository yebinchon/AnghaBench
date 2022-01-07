
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_ssp_config {int ssp_mode; int pcm_mode; int start_delay; int ssp_protocol; int fs_width; int data_polarity; int frame_sync_polarity; int fs_frequency; int active_slot_map; int duplex; int slots; int bits_per_slot; int ssp_id; } ;
struct TYPE_2__ {int mode; int reserved1; int reserved2; int start_delay; int ssp_protocol; int frame_sync_width; int data_polarity; int frame_sync_polarity; int frame_sync_frequency; int active_rx_slot_map; int active_tx_slot_map; int duplex; int nb_slots; int nb_bits_per_slots; int selection; } ;
struct sst_data {TYPE_1__ ssp_cmd; } ;
struct snd_soc_dai {int dummy; } ;


 struct sst_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 struct sst_ssp_config sst_ssp_configs ;

void sst_fill_ssp_defaults(struct snd_soc_dai *dai)
{
 const struct sst_ssp_config *config;
 struct sst_data *ctx = snd_soc_dai_get_drvdata(dai);

 config = &sst_ssp_configs;

 ctx->ssp_cmd.selection = config->ssp_id;
 ctx->ssp_cmd.nb_bits_per_slots = config->bits_per_slot;
 ctx->ssp_cmd.nb_slots = config->slots;
 ctx->ssp_cmd.mode = config->ssp_mode | (config->pcm_mode << 1);
 ctx->ssp_cmd.duplex = config->duplex;
 ctx->ssp_cmd.active_tx_slot_map = config->active_slot_map;
 ctx->ssp_cmd.active_rx_slot_map = config->active_slot_map;
 ctx->ssp_cmd.frame_sync_frequency = config->fs_frequency;
 ctx->ssp_cmd.frame_sync_polarity = config->frame_sync_polarity;
 ctx->ssp_cmd.data_polarity = config->data_polarity;
 ctx->ssp_cmd.frame_sync_width = config->fs_width;
 ctx->ssp_cmd.ssp_protocol = config->ssp_protocol;
 ctx->ssp_cmd.start_delay = config->start_delay;
 ctx->ssp_cmd.reserved1 = ctx->ssp_cmd.reserved2 = 0xFF;
}
