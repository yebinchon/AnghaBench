
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct audio_port_data {size_t dsp_buf; size_t num_periods; int mem_map_handle; struct audio_buffer* buf; } ;
struct audio_client {int adev; int lock; struct audio_port_data* port; int stream_id; } ;
struct audio_buffer {int phys; } ;
struct asm_data_cmd_write_v2 {int buf_size; size_t seq_id; int timestamp_lsw; int timestamp_msw; int flags; int mem_map_handle; int buf_addr_msw; int buf_addr_lsw; } ;
struct TYPE_2__ {size_t token; int opcode; } ;
struct apr_pkt {TYPE_1__ hdr; } ;


 int APR_HDR_SIZE ;
 int ASM_DATA_CMD_WRITE_V2 ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int NO_TIMESTAMP ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int apr_send_pkt (int ,struct apr_pkt*) ;
 int kfree (struct apr_pkt*) ;
 void* kzalloc (int,int ) ;
 int lower_32_bits (int ) ;
 int q6asm_add_hdr (struct audio_client*,TYPE_1__*,int,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int upper_32_bits (int ) ;

int q6asm_write_async(struct audio_client *ac, uint32_t len, uint32_t msw_ts,
         uint32_t lsw_ts, uint32_t wflags)
{
 struct asm_data_cmd_write_v2 *write;
 struct audio_port_data *port;
 struct audio_buffer *ab;
 unsigned long flags;
 struct apr_pkt *pkt;
 int pkt_size;
 int rc = 0;
 void *p;

 pkt_size = APR_HDR_SIZE + sizeof(*write);
 p = kzalloc(pkt_size, GFP_ATOMIC);
 if (!p)
  return -ENOMEM;

 pkt = p;
 write = p + APR_HDR_SIZE;

 spin_lock_irqsave(&ac->lock, flags);
 port = &ac->port[SNDRV_PCM_STREAM_PLAYBACK];
 q6asm_add_hdr(ac, &pkt->hdr, pkt_size, 0, ac->stream_id);

 ab = &port->buf[port->dsp_buf];
 pkt->hdr.token = port->dsp_buf;
 pkt->hdr.opcode = ASM_DATA_CMD_WRITE_V2;
 write->buf_addr_lsw = lower_32_bits(ab->phys);
 write->buf_addr_msw = upper_32_bits(ab->phys);
 write->buf_size = len;
 write->seq_id = port->dsp_buf;
 write->timestamp_lsw = lsw_ts;
 write->timestamp_msw = msw_ts;
 write->mem_map_handle =
     ac->port[SNDRV_PCM_STREAM_PLAYBACK].mem_map_handle;

 if (wflags == NO_TIMESTAMP)
  write->flags = (wflags & 0x800000FF);
 else
  write->flags = (0x80000000 | wflags);

 port->dsp_buf++;

 if (port->dsp_buf >= port->num_periods)
  port->dsp_buf = 0;

 spin_unlock_irqrestore(&ac->lock, flags);
 rc = apr_send_pkt(ac->adev, pkt);
 if (rc == pkt_size)
  rc = 0;

 kfree(pkt);
 return rc;
}
