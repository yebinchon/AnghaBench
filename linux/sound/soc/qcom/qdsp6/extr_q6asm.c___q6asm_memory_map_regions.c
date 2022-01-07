
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct q6asm {int dummy; } ;
struct avs_shared_map_region_payload {int mem_size_bytes; int shm_addr_msw; int shm_addr_lsw; } ;
struct avs_cmd_shared_mem_map_regions {int num_regions; int property_flag; int mem_pool_id; } ;
struct audio_port_data {struct audio_buffer* buf; } ;
struct audio_client {int session; int lock; struct audio_port_data* port; TYPE_1__* dev; } ;
struct audio_buffer {int phys; } ;
struct TYPE_4__ {int pkt_size; int token; int opcode; scalar_t__ dest_port; scalar_t__ src_port; int hdr_field; } ;
struct apr_pkt {TYPE_2__ hdr; } ;
struct TYPE_3__ {int parent; } ;


 int ADSP_MEMORY_MAP_SHMEM8_4K_POOL ;
 int ALIGN (int,int) ;
 int APR_HDR_SIZE ;
 int APR_SEQ_CMD_HDR_FIELD ;
 int ASM_CMDRSP_SHARED_MEM_MAP_REGIONS ;
 int ASM_CMD_SHARED_MEM_MAP_REGIONS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct q6asm* dev_get_drvdata (int ) ;
 int kfree (struct apr_pkt*) ;
 void* kzalloc (int,int ) ;
 int lower_32_bits (int ) ;
 int q6asm_apr_send_session_pkt (struct q6asm*,struct audio_client*,struct apr_pkt*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static int __q6asm_memory_map_regions(struct audio_client *ac, int dir,
          size_t period_sz, unsigned int periods,
          bool is_contiguous)
{
 struct avs_cmd_shared_mem_map_regions *cmd = ((void*)0);
 struct avs_shared_map_region_payload *mregions = ((void*)0);
 struct q6asm *a = dev_get_drvdata(ac->dev->parent);
 struct audio_port_data *port = ((void*)0);
 struct audio_buffer *ab = ((void*)0);
 struct apr_pkt *pkt;
 void *p;
 unsigned long flags;
 uint32_t num_regions, buf_sz;
 int rc, i, pkt_size;

 if (is_contiguous) {
  num_regions = 1;
  buf_sz = period_sz * periods;
 } else {
  buf_sz = period_sz;
  num_regions = periods;
 }


 buf_sz = ALIGN(buf_sz, 4096);

 pkt_size = APR_HDR_SIZE + sizeof(*cmd) +
     (sizeof(*mregions) * num_regions);

 p = kzalloc(pkt_size, GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 pkt = p;
 cmd = p + APR_HDR_SIZE;
 mregions = p + APR_HDR_SIZE + sizeof(*cmd);

 pkt->hdr.hdr_field = APR_SEQ_CMD_HDR_FIELD;
 pkt->hdr.src_port = 0;
 pkt->hdr.dest_port = 0;
 pkt->hdr.pkt_size = pkt_size;
 pkt->hdr.token = ((ac->session << 8) | dir);
 pkt->hdr.opcode = ASM_CMD_SHARED_MEM_MAP_REGIONS;

 cmd->mem_pool_id = ADSP_MEMORY_MAP_SHMEM8_4K_POOL;
 cmd->num_regions = num_regions;
 cmd->property_flag = 0x00;

 spin_lock_irqsave(&ac->lock, flags);
 port = &ac->port[dir];

 for (i = 0; i < num_regions; i++) {
  ab = &port->buf[i];
  mregions->shm_addr_lsw = lower_32_bits(ab->phys);
  mregions->shm_addr_msw = upper_32_bits(ab->phys);
  mregions->mem_size_bytes = buf_sz;
  ++mregions;
 }
 spin_unlock_irqrestore(&ac->lock, flags);

 rc = q6asm_apr_send_session_pkt(a, ac, pkt,
     ASM_CMDRSP_SHARED_MEM_MAP_REGIONS);

 kfree(pkt);

 return rc;
}
