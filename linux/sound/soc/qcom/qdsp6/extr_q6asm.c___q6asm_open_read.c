
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct audio_client {int stream_id; } ;
struct asm_stream_cmd_open_read_v3 {int mode_flags; int enc_cfg_id; int bits_per_sample; int preprocopo_id; int src_endpointype; } ;
struct TYPE_2__ {int opcode; } ;
struct apr_pkt {TYPE_1__ hdr; } ;


 int APR_HDR_SIZE ;
 int ASM_END_POINT_DEVICE_MATRIX ;
 int ASM_LEGACY_STREAM_SESSION ;
 int ASM_MEDIA_FMT_MULTI_CHANNEL_PCM_V2 ;
 int ASM_SHIFT_STREAM_PERF_MODE_FLAG_IN_OPEN_READ ;
 int ASM_STREAM_CMD_OPEN_READ_V3 ;
 int ASM_STREAM_POSTPROC_TOPO_ID_NONE ;
 int ENOMEM ;

 int GFP_KERNEL ;
 int kfree (struct apr_pkt*) ;
 void* kzalloc (int,int ) ;
 int pr_err (char*,int) ;
 int q6asm_ac_send_cmd_sync (struct audio_client*,struct apr_pkt*) ;
 int q6asm_add_hdr (struct audio_client*,TYPE_1__*,int,int,int ) ;

__attribute__((used)) static int __q6asm_open_read(struct audio_client *ac,
  uint32_t format, uint16_t bits_per_sample)
{
 struct asm_stream_cmd_open_read_v3 *open;
 struct apr_pkt *pkt;
 int pkt_size, rc;
 void *p;

 pkt_size = APR_HDR_SIZE + sizeof(*open);
 p = kzalloc(pkt_size, GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 pkt = p;
 open = p + APR_HDR_SIZE;

 q6asm_add_hdr(ac, &pkt->hdr, pkt_size, 1, ac->stream_id);
 pkt->hdr.opcode = ASM_STREAM_CMD_OPEN_READ_V3;

 open->src_endpointype = ASM_END_POINT_DEVICE_MATRIX;

 open->preprocopo_id = ASM_STREAM_POSTPROC_TOPO_ID_NONE;
 open->bits_per_sample = bits_per_sample;
 open->mode_flags = 0x0;

 open->mode_flags |= ASM_LEGACY_STREAM_SESSION <<
    ASM_SHIFT_STREAM_PERF_MODE_FLAG_IN_OPEN_READ;

 switch (format) {
 case 128:
  open->mode_flags |= 0x00;
  open->enc_cfg_id = ASM_MEDIA_FMT_MULTI_CHANNEL_PCM_V2;
  break;
 default:
  pr_err("Invalid format[%d]\n", format);
 }

 rc = q6asm_ac_send_cmd_sync(ac, pkt);

 kfree(pkt);
 return rc;
}
