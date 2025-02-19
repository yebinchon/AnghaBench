
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct q6asm {int dummy; } ;
struct avs_cmd_shared_mem_unmap_regions {scalar_t__ mem_map_handle; } ;
struct audio_client {int session; TYPE_2__* port; TYPE_3__* dev; } ;
struct TYPE_4__ {int pkt_size; int token; int opcode; scalar_t__ dest_port; scalar_t__ src_port; int hdr_field; } ;
struct apr_pkt {TYPE_1__ hdr; } ;
typedef int phys_addr_t ;
struct TYPE_6__ {int parent; } ;
struct TYPE_5__ {scalar_t__ mem_map_handle; } ;


 int APR_HDR_SIZE ;
 int APR_SEQ_CMD_HDR_FIELD ;
 int ASM_CMD_SHARED_MEM_UNMAP_REGIONS ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_3__*,char*) ;
 struct q6asm* dev_get_drvdata (int ) ;
 int kfree (struct apr_pkt*) ;
 void* kzalloc (int,int ) ;
 int q6asm_apr_send_session_pkt (struct q6asm*,struct audio_client*,struct apr_pkt*,int ) ;

__attribute__((used)) static int __q6asm_memory_unmap(struct audio_client *ac,
    phys_addr_t buf_add, int dir)
{
 struct avs_cmd_shared_mem_unmap_regions *mem_unmap;
 struct q6asm *a = dev_get_drvdata(ac->dev->parent);
 struct apr_pkt *pkt;
 int rc, pkt_size;
 void *p;

 if (ac->port[dir].mem_map_handle == 0) {
  dev_err(ac->dev, "invalid mem handle\n");
  return -EINVAL;
 }

 pkt_size = APR_HDR_SIZE + sizeof(*mem_unmap);
 p = kzalloc(pkt_size, GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 pkt = p;
 mem_unmap = p + APR_HDR_SIZE;

 pkt->hdr.hdr_field = APR_SEQ_CMD_HDR_FIELD;
 pkt->hdr.src_port = 0;
 pkt->hdr.dest_port = 0;
 pkt->hdr.pkt_size = pkt_size;
 pkt->hdr.token = ((ac->session << 8) | dir);

 pkt->hdr.opcode = ASM_CMD_SHARED_MEM_UNMAP_REGIONS;
 mem_unmap->mem_map_handle = ac->port[dir].mem_map_handle;

 rc = q6asm_apr_send_session_pkt(a, ac, pkt, 0);
 if (rc < 0) {
  kfree(pkt);
  return rc;
 }

 ac->port[dir].mem_map_handle = 0;

 kfree(pkt);
 return 0;
}
