
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct sst_dsp {int dummy; } ;


 unsigned int sst_dsp_shim_read_unlocked (struct sst_dsp*,unsigned int) ;
 int sst_dsp_shim_write_unlocked (struct sst_dsp*,unsigned int,unsigned int) ;

int sst_dsp_shim_update_bits_unlocked(struct sst_dsp *sst, u32 offset,
    u32 mask, u32 value)
{
 bool change;
 unsigned int old, new;
 u32 ret;

 ret = sst_dsp_shim_read_unlocked(sst, offset);

 old = ret;
 new = (old & (~mask)) | (value & mask);

 change = (old != new);
 if (change)
  sst_dsp_shim_write_unlocked(sst, offset, new);

 return change;
}
