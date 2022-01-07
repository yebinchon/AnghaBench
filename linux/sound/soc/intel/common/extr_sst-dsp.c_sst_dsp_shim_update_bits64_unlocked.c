
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sst_dsp {int dummy; } ;


 int sst_dsp_shim_read64_unlocked (struct sst_dsp*,int ) ;
 int sst_dsp_shim_write64_unlocked (struct sst_dsp*,int ,int) ;

int sst_dsp_shim_update_bits64_unlocked(struct sst_dsp *sst, u32 offset,
    u64 mask, u64 value)
{
 bool change;
 u64 old, new;

 old = sst_dsp_shim_read64_unlocked(sst, offset);

 new = (old & (~mask)) | (value & mask);

 change = (old != new);
 if (change)
  sst_dsp_shim_write64_unlocked(sst, offset, new);

 return change;
}
