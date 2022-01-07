
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint32_t ;
typedef int uint16_t ;
typedef int u8 ;
struct audio_client {int dev; int stream_id; } ;
struct TYPE_3__ {int fmt_blk_size; } ;
struct asm_multi_channel_pcm_fmt_blk_v2 {int is_signed; int * channel_mapping; void* sample_rate; int bits_per_sample; void* num_channels; TYPE_1__ fmt_blk; } ;
struct TYPE_4__ {int opcode; } ;
struct apr_pkt {TYPE_2__ hdr; } ;


 int APR_HDR_SIZE ;
 int ASM_DATA_CMD_MEDIA_FMT_UPDATE_V2 ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PCM_MAX_NUM_CHANNEL ;
 int dev_err (int ,char*,void*) ;
 int kfree (struct apr_pkt*) ;
 void* kzalloc (int,int ) ;
 int memcpy (int *,int *,int ) ;
 int q6asm_ac_send_cmd_sync (struct audio_client*,struct apr_pkt*) ;
 int q6asm_add_hdr (struct audio_client*,TYPE_2__*,int,int,int ) ;
 scalar_t__ q6dsp_map_channels (int *,void*) ;

int q6asm_media_format_block_multi_ch_pcm(struct audio_client *ac,
       uint32_t rate, uint32_t channels,
       u8 channel_map[PCM_MAX_NUM_CHANNEL],
       uint16_t bits_per_sample)
{
 struct asm_multi_channel_pcm_fmt_blk_v2 *fmt;
 struct apr_pkt *pkt;
 u8 *channel_mapping;
 void *p;
 int rc, pkt_size;

 pkt_size = APR_HDR_SIZE + sizeof(*fmt);
 p = kzalloc(pkt_size, GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 pkt = p;
 fmt = p + APR_HDR_SIZE;

 q6asm_add_hdr(ac, &pkt->hdr, pkt_size, 1, ac->stream_id);

 pkt->hdr.opcode = ASM_DATA_CMD_MEDIA_FMT_UPDATE_V2;
 fmt->fmt_blk.fmt_blk_size = sizeof(*fmt) - sizeof(fmt->fmt_blk);
 fmt->num_channels = channels;
 fmt->bits_per_sample = bits_per_sample;
 fmt->sample_rate = rate;
 fmt->is_signed = 1;

 channel_mapping = fmt->channel_mapping;

 if (channel_map) {
  memcpy(channel_mapping, channel_map, PCM_MAX_NUM_CHANNEL);
 } else {
  if (q6dsp_map_channels(channel_mapping, channels)) {
   dev_err(ac->dev, " map channels failed %d\n", channels);
   rc = -EINVAL;
   goto err;
  }
 }

 rc = q6asm_ac_send_cmd_sync(ac, pkt);

err:
 kfree(pkt);
 return rc;
}
