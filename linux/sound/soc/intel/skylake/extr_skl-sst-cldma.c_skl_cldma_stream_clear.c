
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int CL_SD_BDLPLBA (int ) ;
 int CL_SD_CTL_DEIE (int ) ;
 int CL_SD_CTL_DEIE_MASK ;
 int CL_SD_CTL_FEIE (int ) ;
 int CL_SD_CTL_FEIE_MASK ;
 int CL_SD_CTL_IOCE (int ) ;
 int CL_SD_CTL_IOCE_MASK ;
 int CL_SD_CTL_STRM (int ) ;
 int CL_SD_CTL_STRM_MASK ;
 int SKL_ADSP_REG_CL_SD_BDLPL ;
 int SKL_ADSP_REG_CL_SD_BDLPU ;
 int SKL_ADSP_REG_CL_SD_CBL ;
 int SKL_ADSP_REG_CL_SD_CTL ;
 int SKL_ADSP_REG_CL_SD_LVI ;
 int skl_cldma_stream_run (struct sst_dsp*,int ) ;
 int sst_dsp_shim_update_bits (struct sst_dsp*,int ,int ,int ) ;
 int sst_dsp_shim_write (struct sst_dsp*,int ,int ) ;

__attribute__((used)) static void skl_cldma_stream_clear(struct sst_dsp *ctx)
{

 skl_cldma_stream_run(ctx, 0);

 sst_dsp_shim_update_bits(ctx, SKL_ADSP_REG_CL_SD_CTL,
    CL_SD_CTL_IOCE_MASK, CL_SD_CTL_IOCE(0));
 sst_dsp_shim_update_bits(ctx, SKL_ADSP_REG_CL_SD_CTL,
    CL_SD_CTL_FEIE_MASK, CL_SD_CTL_FEIE(0));
 sst_dsp_shim_update_bits(ctx, SKL_ADSP_REG_CL_SD_CTL,
    CL_SD_CTL_DEIE_MASK, CL_SD_CTL_DEIE(0));
 sst_dsp_shim_update_bits(ctx, SKL_ADSP_REG_CL_SD_CTL,
    CL_SD_CTL_STRM_MASK, CL_SD_CTL_STRM(0));

 sst_dsp_shim_write(ctx, SKL_ADSP_REG_CL_SD_BDLPL, CL_SD_BDLPLBA(0));
 sst_dsp_shim_write(ctx, SKL_ADSP_REG_CL_SD_BDLPU, 0);

 sst_dsp_shim_write(ctx, SKL_ADSP_REG_CL_SD_CBL, 0);
 sst_dsp_shim_write(ctx, SKL_ADSP_REG_CL_SD_LVI, 0);
}
