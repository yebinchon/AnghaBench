
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dummy; } ;


 int CNL_ADSP_ERROR_CODE ;
 unsigned int sst_dsp_shim_read (struct sst_dsp*,int ) ;

__attribute__((used)) static unsigned int cnl_get_errno(struct sst_dsp *ctx)
{
 return sst_dsp_shim_read(ctx, CNL_ADSP_ERROR_CODE);
}
