
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ dsp_dram_offset; scalar_t__ dram_offset; scalar_t__ dsp_iram_offset; scalar_t__ iram_offset; } ;
struct sst_dsp {TYPE_1__ addr; } ;
typedef enum sst_mem_type { ____Placeholder_sst_mem_type } sst_mem_type ;





u32 sst_dsp_get_offset(struct sst_dsp *dsp, u32 offset,
 enum sst_mem_type type)
{
 switch (type) {
 case 128:
  return offset - dsp->addr.iram_offset +
   dsp->addr.dsp_iram_offset;
 case 129:
  return offset - dsp->addr.dram_offset +
   dsp->addr.dsp_dram_offset;
 default:
  return 0;
 }
}
