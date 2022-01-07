
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct audio_port_data {size_t dsp_buf; size_t num_periods; int mem_map_handle; struct audio_buffer* buf; } ;
struct audio_client {int adev; int lock; int stream_id; struct audio_port_data* port; } ;
struct audio_buffer {int size; int phys; } ;
struct asm_data_cmd_read_v2 {size_t seq_id; int buf_size; int mem_map_handle; int buf_addr_msw; int buf_addr_lsw; } ;
struct TYPE_2__ {size_t token; int opcode; } ;
struct apr_pkt {TYPE_1__ hdr; } ;


 int APR_HDR_SIZE ;
 int ASM_DATA_CMD_READ_V2 ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 int apr_send_pkt (int ,struct apr_pkt*) ;
 int kfree (struct apr_pkt*) ;
 void* kzalloc (int,int ) ;
 int lower_32_bits (int ) ;
 int pr_err (char*,int ,int) ;
 int q6asm_add_hdr (struct audio_client*,TYPE_1__*,int,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int upper_32_bits (int ) ;

int q6asm_read(struct audio_client *ac)
{
 struct asm_data_cmd_read_v2 *read;
 struct audio_port_data *port;
 struct audio_buffer *ab;
 struct apr_pkt *pkt;
 unsigned long flags;
 int pkt_size;
 int rc = 0;
 void *p;

 pkt_size = APR_HDR_SIZE + sizeof(*read);
 p = kzalloc(pkt_size, GFP_ATOMIC);
 if (!p)
  return -ENOMEM;

 pkt = p;
 read = p + APR_HDR_SIZE;

 spin_lock_irqsave(&ac->lock, flags);
 port = &ac->port[SNDRV_PCM_STREAM_CAPTURE];
 q6asm_add_hdr(ac, &pkt->hdr, pkt_size, 0, ac->stream_id);
 ab = &port->buf[port->dsp_buf];
 pkt->hdr.opcode = ASM_DATA_CMD_READ_V2;
 read->buf_addr_lsw = lower_32_bits(ab->phys);
 read->buf_addr_msw = upper_32_bits(ab->phys);
 read->mem_map_handle = port->mem_map_handle;

 read->buf_size = ab->size;
 read->seq_id = port->dsp_buf;
 pkt->hdr.token = port->dsp_buf;

 port->dsp_buf++;

 if (port->dsp_buf >= port->num_periods)
  port->dsp_buf = 0;

 spin_unlock_irqrestore(&ac->lock, flags);
 rc = apr_send_pkt(ac->adev, pkt);
 if (rc == pkt_size)
  rc = 0;
 else
  pr_err("read op[0x%x]rc[%d]\n", pkt->hdr.opcode, rc);

 kfree(pkt);
 return rc;
}
