
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct audio_client {int io_mode; int dev; int stream_id; } ;
struct asm_stream_cmd_open_write_v3 {int mode_flags; int dec_fmt_id; int postprocopo_id; int bits_per_sample; int sink_endpointype; } ;
struct TYPE_2__ {int opcode; } ;
struct apr_pkt {TYPE_1__ hdr; } ;


 int APR_HDR_SIZE ;
 int ASM_END_POINT_DEVICE_MATRIX ;
 int ASM_LEGACY_STREAM_SESSION ;
 int ASM_MEDIA_FMT_MP3 ;
 int ASM_MEDIA_FMT_MULTI_CHANNEL_PCM_V2 ;
 int ASM_NULL_POPP_TOPOLOGY ;
 int ASM_STREAM_CMD_OPEN_WRITE_V3 ;
 int ASM_TUN_WRITE_IO_MODE ;
 int EINVAL ;
 int ENOMEM ;

 int GFP_KERNEL ;

 int dev_err (int ,char*,int) ;
 int kfree (struct apr_pkt*) ;
 void* kzalloc (int,int ) ;
 int q6asm_ac_send_cmd_sync (struct audio_client*,struct apr_pkt*) ;
 int q6asm_add_hdr (struct audio_client*,TYPE_1__*,int,int,int ) ;

int q6asm_open_write(struct audio_client *ac, uint32_t format,
       uint16_t bits_per_sample)
{
 struct asm_stream_cmd_open_write_v3 *open;
 struct apr_pkt *pkt;
 void *p;
 int rc, pkt_size;

 pkt_size = APR_HDR_SIZE + sizeof(*open);

 p = kzalloc(pkt_size, GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 pkt = p;
 open = p + APR_HDR_SIZE;
 q6asm_add_hdr(ac, &pkt->hdr, pkt_size, 1, ac->stream_id);

 pkt->hdr.opcode = ASM_STREAM_CMD_OPEN_WRITE_V3;
 open->mode_flags = 0x00;
 open->mode_flags |= ASM_LEGACY_STREAM_SESSION;


 open->sink_endpointype = ASM_END_POINT_DEVICE_MATRIX;
 open->bits_per_sample = bits_per_sample;
 open->postprocopo_id = ASM_NULL_POPP_TOPOLOGY;

 switch (format) {
 case 128:
  open->dec_fmt_id = ASM_MEDIA_FMT_MP3;
  break;
 case 129:
  open->dec_fmt_id = ASM_MEDIA_FMT_MULTI_CHANNEL_PCM_V2;
  break;
 default:
  dev_err(ac->dev, "Invalid format 0x%x\n", format);
  rc = -EINVAL;
  goto err;
 }

 rc = q6asm_ac_send_cmd_sync(ac, pkt);
 if (rc < 0)
  goto err;

 ac->io_mode |= ASM_TUN_WRITE_IO_MODE;

err:
 kfree(pkt);
 return rc;
}
