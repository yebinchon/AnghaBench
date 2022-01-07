
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int SST_BYT_CSR_RST ;
 int SST_BYT_CSR_STALL ;
 int SST_BYT_CSR_VECTOR_SEL ;
 int SST_CSR ;
 int sst_dsp_shim_update_bits64 (struct sst_dsp*,int ,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void sst_byt_reset(struct sst_dsp *sst)
{

 sst_dsp_shim_update_bits64(sst, SST_CSR,
  SST_BYT_CSR_RST | SST_BYT_CSR_VECTOR_SEL | SST_BYT_CSR_STALL,
  SST_BYT_CSR_RST | SST_BYT_CSR_VECTOR_SEL | SST_BYT_CSR_STALL);

 udelay(10);


 sst_dsp_shim_update_bits64(sst, SST_CSR, SST_BYT_CSR_RST, 0);
}
