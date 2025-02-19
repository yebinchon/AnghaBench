
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned long addr; TYPE_1__* cmds; } ;
struct pmac_stream {int dummy; } ;
struct snd_pmac {TYPE_3__ extra_dma; TYPE_2__* awacs; struct pmac_stream playback; } ;
struct TYPE_5__ {int byteswap; int control; } ;
struct TYPE_4__ {void* command; void* phy_addr; void* cmd_dep; void* xfer_status; void* req_count; } ;


 int BR_ALWAYS ;
 int OUTPUT_MORE ;
 int RUN ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (unsigned long) ;
 int in_le32 (int *) ;
 int out_le32 (int *,int) ;
 int snd_pmac_dma_run (struct pmac_stream*,int ) ;
 int snd_pmac_dma_set_command (struct pmac_stream*,TYPE_3__*) ;
 int snd_pmac_dma_stop (struct pmac_stream*) ;

void snd_pmac_beep_dma_start(struct snd_pmac *chip, int bytes, unsigned long addr, int speed)
{
 struct pmac_stream *rec = &chip->playback;

 snd_pmac_dma_stop(rec);
 chip->extra_dma.cmds->req_count = cpu_to_le16(bytes);
 chip->extra_dma.cmds->xfer_status = cpu_to_le16(0);
 chip->extra_dma.cmds->cmd_dep = cpu_to_le32(chip->extra_dma.addr);
 chip->extra_dma.cmds->phy_addr = cpu_to_le32(addr);
 chip->extra_dma.cmds->command = cpu_to_le16(OUTPUT_MORE + BR_ALWAYS);
 out_le32(&chip->awacs->control,
   (in_le32(&chip->awacs->control) & ~0x1f00)
   | (speed << 8));
 out_le32(&chip->awacs->byteswap, 0);
 snd_pmac_dma_set_command(rec, &chip->extra_dma);
 snd_pmac_dma_run(rec, RUN);
}
