
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* low; void* high; } ;
union acp_dma_count {int bytescount; TYPE_1__ bcount; } ;
typedef int u64 ;
struct audio_substream_data {int byte_cnt_low_reg_offset; int acp_mmio; int byte_cnt_high_reg_offset; } ;


 void* acp_reg_read (int ,int ) ;

__attribute__((used)) static u64 acp_get_byte_count(struct audio_substream_data *rtd)
{
 union acp_dma_count byte_count;

 byte_count.bcount.high = acp_reg_read(rtd->acp_mmio,
           rtd->byte_cnt_high_reg_offset);
 byte_count.bcount.low = acp_reg_read(rtd->acp_mmio,
           rtd->byte_cnt_low_reg_offset);
 return byte_count.bytescount;
}
