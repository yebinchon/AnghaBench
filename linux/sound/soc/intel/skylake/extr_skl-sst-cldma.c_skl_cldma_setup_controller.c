
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_dsp {int dummy; } ;
struct snd_dma_buffer {int addr; } ;


 int CL_SD_BDLPLBA (int ) ;
 int CL_SD_BDLPUBA (int ) ;
 int CL_SD_CTL_DEIE (int) ;
 int CL_SD_CTL_DEIE_MASK ;
 int CL_SD_CTL_FEIE (int) ;
 int CL_SD_CTL_FEIE_MASK ;
 int CL_SD_CTL_IOCE (int) ;
 int CL_SD_CTL_IOCE_MASK ;
 int CL_SD_CTL_STRM (int ) ;
 int CL_SD_CTL_STRM_MASK ;
 int FW_CL_STREAM_NUMBER ;
 int SKL_ADSP_REG_CL_SD_BDLPL ;
 int SKL_ADSP_REG_CL_SD_BDLPU ;
 int SKL_ADSP_REG_CL_SD_CBL ;
 int SKL_ADSP_REG_CL_SD_CTL ;
 int SKL_ADSP_REG_CL_SD_LVI ;
 int skl_cldma_stream_clear (struct sst_dsp*) ;
 int sst_dsp_shim_update_bits (struct sst_dsp*,int ,int ,int ) ;
 int sst_dsp_shim_write (struct sst_dsp*,int ,int) ;

__attribute__((used)) static void skl_cldma_setup_controller(struct sst_dsp *ctx,
  struct snd_dma_buffer *dmab_bdl, unsigned int max_size,
  u32 count)
{
 skl_cldma_stream_clear(ctx);
 sst_dsp_shim_write(ctx, SKL_ADSP_REG_CL_SD_BDLPL,
   CL_SD_BDLPLBA(dmab_bdl->addr));
 sst_dsp_shim_write(ctx, SKL_ADSP_REG_CL_SD_BDLPU,
   CL_SD_BDLPUBA(dmab_bdl->addr));

 sst_dsp_shim_write(ctx, SKL_ADSP_REG_CL_SD_CBL, max_size);
 sst_dsp_shim_write(ctx, SKL_ADSP_REG_CL_SD_LVI, count - 1);
 sst_dsp_shim_update_bits(ctx, SKL_ADSP_REG_CL_SD_CTL,
   CL_SD_CTL_IOCE_MASK, CL_SD_CTL_IOCE(1));
 sst_dsp_shim_update_bits(ctx, SKL_ADSP_REG_CL_SD_CTL,
   CL_SD_CTL_FEIE_MASK, CL_SD_CTL_FEIE(1));
 sst_dsp_shim_update_bits(ctx, SKL_ADSP_REG_CL_SD_CTL,
   CL_SD_CTL_DEIE_MASK, CL_SD_CTL_DEIE(1));
 sst_dsp_shim_update_bits(ctx, SKL_ADSP_REG_CL_SD_CTL,
   CL_SD_CTL_STRM_MASK, CL_SD_CTL_STRM(FW_CL_STREAM_NUMBER));
}
