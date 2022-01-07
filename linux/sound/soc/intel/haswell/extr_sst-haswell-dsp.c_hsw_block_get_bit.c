
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct sst_mem_block {int type; size_t index; struct sst_dsp* dsp; } ;
struct sst_dsp {scalar_t__ id; } ;
struct TYPE_3__ {scalar_t__ dev_id; size_t dram_shift; size_t iram_shift; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;


 TYPE_1__* sram_shift ;

__attribute__((used)) static u32 hsw_block_get_bit(struct sst_mem_block *block)
{
 u32 bit = 0, shift = 0, index;
 struct sst_dsp *sst = block->dsp;

 for (index = 0; index < ARRAY_SIZE(sram_shift); index++) {
  if (sram_shift[index].dev_id == sst->id)
   break;
 }

 if (index < ARRAY_SIZE(sram_shift)) {
  switch (block->type) {
  case 129:
   shift = sram_shift[index].dram_shift;
   break;
  case 128:
   shift = sram_shift[index].iram_shift;
   break;
  default:
   shift = 0;
  }
 } else
  shift = 0;

 bit = 1 << (block->index + shift);

 return bit;
}
